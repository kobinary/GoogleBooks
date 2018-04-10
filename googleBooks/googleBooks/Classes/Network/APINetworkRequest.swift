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
    
    func getEvents(completion: @escaping (EventsListViewModel?) -> Void)  {
        
        let getEvents = PlistReader.getAPIEnpoint(key:"events")
        let searchEventsURL = googleBooksSearch + getEvents
        
        Alamofire.request(searchEventsURL).responseJSON {
            (response) in
            if let responseJSON = response.result.value as? [String: Any] {                
                let events = DataParser().getListOfEvents(dictionary: responseJSON)
                completion(events)
            } else {
                completion(nil)
            }
        }
    }
}
