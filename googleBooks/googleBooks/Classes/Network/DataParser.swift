//
//  DataParser.swift
//  googleBooks
//
//  Created by Maria Ortega on 10/04/2018.
//  Copyright © 2018 Maria Ortega. All rights reserved.
//

import UIKit

class DataParser: NSObject {

    func getListOfEvents(dictionary : [String : Any]) -> EventsListViewModel {
        let eventsArray = EventsListViewModel()
        eventsArray.events = []
        
        let events = dictionary["items"] as? NSArray
        for event in events! {
            let eventVM = self.getEventViewModel(content: event as! NSDictionary)
            eventsArray.events.append(eventVM)
        }
        return eventsArray
    }

    func getEventViewModel(content : NSDictionary) -> EventViewModel {
                
        let id = content["id"] as! String
        let volumeInfo = content["volumeInfo"] as! NSDictionary
        let title = volumeInfo["title"] as! String
        let subtitle = nullToEmptyString(value: volumeInfo["subtitle"] as AnyObject)
        let authors = nullToEmptyArray(value: volumeInfo["authors"] as AnyObject)
        let publishedDate = volumeInfo["publishedDate"] as! String
        let bookDescription = nullToEmptyString(value: volumeInfo["description"] as AnyObject)
       
        let imageLinks = volumeInfo["imageLinks"] as! NSDictionary
        let smallThumbnail = imageLinks["smallThumbnail"] as! String
        let thumbnail = imageLinks["thumbnail"] as! String

        let event = Event(id: id, title: title, subtitle: subtitle!, thumbnail: thumbnail, smallThumbnail: smallThumbnail, authors:authors!, publishedDate: publishedDate, bookDescription: bookDescription!)
        
        return EventViewModel(withEvent: event)
    }
    
    func nullToEmptyString(value : AnyObject?) -> String? {
        if value is NSNull {
            return ""
        } else {
            return (value as! String)
        }
    }
    
    func nullToEmptyArray(value : AnyObject?) -> Array<String>? {
        if value is NSNull {
            return []
        } else {
            return (value as!  Array<String>)
        }
    }
}
