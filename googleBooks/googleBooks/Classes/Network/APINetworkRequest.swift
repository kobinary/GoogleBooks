//
//  APINetworkRequest.swift
//  popsy
//
//  Created by Maria Ortega on 10/04/2018.
//  Copyright © 2018 Maria Ortega. All rights reserved.
//

import UIKit
import Alamofire

let googleBooksSearch = PlistReader.getAPIEnpoint(key:"googlebooks-search")

class APINetworkRequest: NSObject {
    
    func getListings(completion: @escaping (Array<ListingViewModel>) -> Void)  {
        
        let getEvents = PlistReader.getAPIEnpoint(key:"events")
        let searchEventsURL = popsyDev + getListings
        
        Alamofire.request(searchEventsURL).responseJSON {
            (response) in
            if let responseJSON = response.result.value as? [String: Any] {
                let results = responseJSON["results"] as? NSArray
                
                let events = DataParser().getListOfContet(array: results!)
                completion(events)
            } else {
                completion([])
            }
        }
    }
}
