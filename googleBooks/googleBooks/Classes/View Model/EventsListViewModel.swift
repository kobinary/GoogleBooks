//
//  EventsListViewModel.swift
//  googleBooks
//
//  Created by Maria Ortega on 10/04/2018.
//  Copyright © 2018 Maria Ortega. All rights reserved.
//

import UIKit

class EventsListViewModel: NSObject {

    var events : Array<EventViewModel>!
    
    func updateViewModelWith(array: Array<EventViewModel>) {
        self.events = array
    }

}
