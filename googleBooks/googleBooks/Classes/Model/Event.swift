//
//  Event.swift
//  googleBooks
//
//  Created by Maria Ortega on 10/04/2018.
//  Copyright © 2018 Maria Ortega. All rights reserved.
//

import UIKit

class Event: NSObject {
    
    public enum State: String {
        case uploaded
        case not_uploaded
        case updated
    }
    
    var id: String!
    var link: String!
    var title: String!
    var subtitle: String!
    var authors: Array<String>!
    var smallThumbnail: String!
    var thumbnail: String!
    var publishedDate: String!
    var bookDescription: String!
    // Add more variables
    
    override init() {
        super.init()
    }
    
    init(id: String, title: String, authors: Array<String>, smallThumbnail: String) {
        self.id = id
        self.title = title
        self.authors = authors
        self.smallThumbnail = smallThumbnail
    }
    
    init(id: String, title: String, thumbnail: String, publishedDate: String, bookDescription: String) {
        self.id = id
        self.title = title
        self.thumbnail = thumbnail
        self.publishedDate = publishedDate
        self.bookDescription = bookDescription
    }
    
}
