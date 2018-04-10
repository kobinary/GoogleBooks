//
//  Event.swift
//  googleBooks
//
//  Created by Maria Ortega on 10/04/2018.
//  Copyright © 2018 Maria Ortega. All rights reserved.
//

import UIKit

class Event: NSObject {
    
    var id: String!
    var link: String!
    var title: String!
    var subtitle: String!
    var authors: Array<String>!
    var smallThumbnail: String!
    var thumbnail: String!
    var publishedDate: String!
    var bookDescription: String!
    
    override init() {
        super.init()
    }
    
    init(id: String, title: String, subtitle: String, thumbnail: String, smallThumbnail: String, authors: Array<String>, publishedDate: String, bookDescription: String) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
        self.thumbnail = thumbnail
        self.smallThumbnail = smallThumbnail
        self.authors = authors
        self.publishedDate = publishedDate
        self.bookDescription = bookDescription
    }
    
}
