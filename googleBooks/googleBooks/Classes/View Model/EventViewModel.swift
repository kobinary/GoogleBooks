//
//  EventViewModel.swift
//  googleBooks
//
//  Created by Maria Ortega on 10/04/2018.
//  Copyright © 2018 Maria Ortega. All rights reserved.
//

import UIKit

class EventViewModel: NSObject {

    var id: String!
    var link: String!
    var title: String!
    var subtitle: String!
    var authors: String!
    var smallThumbnail: String!
    var thumbnail: String!
    var publishedDate: String!
    var bookDescription: String!
    
    override init() {
        super.init()
    }
    
    init(withEvent event: Event!) {
        super.init()
        self.id = event.id
        self.title = event.title
        self.thumbnail = event.thumbnail
        self.smallThumbnail = event.smallThumbnail
        
        self.publishedDate = getPublishDate(date: event.publishedDate)
        self.bookDescription = getDescription(text: event.bookDescription)
        self.authors = getAuthorsNames(array: event.authors)
    }
    
    func getAuthorsNames(array: Array<String>) -> String {
        var names = ""
        if array.count > 1 {
            for name in array {
                names.append(name + " ")
            }
        } else if array.count == 1 {
            names = array.first!
        }
        return names
    }
    
    func getDescription(text: String) -> String {
        if text == "" {
            return "Sin Descripción por el momento."
        }
        return text
    }
    
    func getPublishDate(date: String) -> String {
        return "[" + date + "]"
    }

}
