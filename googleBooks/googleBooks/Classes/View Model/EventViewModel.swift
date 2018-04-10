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
    var authors: Array<String>!
    var smallThumbnail: String!
    var thumbnail: String!
    var publishedDate: String!
    var bookDescription: String!
    
    override init() {
        super.init()
    }
    
    init(withEvent event: Event!) {
        self.id = event.id
        self.title = event.title
        self.thumbnail = event.thumbnail
        self.publishedDate = event.publishedDate
        self.bookDescription = event.bookDescription
    }

}
