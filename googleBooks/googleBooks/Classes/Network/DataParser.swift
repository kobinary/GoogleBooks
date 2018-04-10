//
//  DataParser.swift
//  popsy
//
//  Created by Maria Ortega on 10/04/2018.
//  Copyright © 2018 Maria Ortega. All rights reserved.
//

import UIKit

class DataParser: NSObject {

    func getListOfContet(array : NSArray) -> Array<ListingViewModel> {
        var listingsArray : Array<ListingViewModel> = []
        
        for listing in array {
            listingsArray.append(self.getListing(content: listing as! NSDictionary))
        }
        return listingsArray
    }

    func getListing(content : NSDictionary) -> ListingViewModel {
        let id = content["id"] as! String
        let pictures = content["pictures"] as! NSArray
        let picturesDic = pictures[0] as! NSDictionary
        let path = picturesDic["path"] as! String
        
        let listing = Listing.init(id: id,
                                   imagePath: path)
        
        return ListingViewModel.init(withListing: listing)
    }
    
    func getListingDetail(content : NSDictionary) -> ListingViewModel {
        let id = content["id"] as! String
        let title = content["title"] as! String
        let desc = content["description"] as! String
        let date = content["updated_at"] as! Double
        
        let coordinates = content["coordinates"] as! NSDictionary
        let city = coordinates["city"] as! String
        let latitude = coordinates["latitude"] as! Double
        let longitude = coordinates["longitude"] as! Double
        
        let pictures = content["pictures"] as! NSArray
        let picturesDic = pictures[0] as! NSDictionary
        let path = picturesDic["path"] as! String
        let priceDic = content["price"] as! NSDictionary
        let price = priceDic["amount"] as! NSNumber
        let currency = priceDic["currency"] as! String

        let views = content["views"] as! NSNumber
        let favourites = content["favorited_by"] as! NSArray
        
        let listing = Listing.init(id: id,
                                   title: title,
                                   info: desc,
                                   imagePath: path,
                                   price: price,
                                   currency: currency,
                                   city: city,
                                   latitude: latitude,
                                   longitude: longitude,
                                   views: views,
                                   favourites: favourites,
                                   date: date)
        
        return ListingViewModel.init(withDetails: listing)
    }

}
