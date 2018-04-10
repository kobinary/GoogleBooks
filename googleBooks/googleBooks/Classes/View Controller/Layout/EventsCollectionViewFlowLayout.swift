//
//  EventsCollectionViewFlowLayout.swift
//  googleBooks
//
//  Created by Maria Ortega on 10/04/2018.
//  Copyright © 2018 Maria Ortega. All rights reserved.
//

import UIKit

class EventsCollectionViewFlowLayout: UICollectionViewFlowLayout {

    static var layout: UICollectionViewLayout = {
        let flow = EventsCollectionViewFlowLayout()
        flow.itemSize = cellSize()
        flow.minimumInteritemSpacing = 3
        flow.minimumLineSpacing = 3
        flow.scrollDirection = .vertical
        return flow
    }()
    
    static func cellSize() -> CGSize {
        switch UIScreen.main.nativeBounds.height {
        case 1920.0, 2208.0: // Plus
            return CGSize(width: 133,
                          height: 133)
        case 1136.0: // iPhone SE
            return CGSize(width: 103,
                          height: 103)
        case 1334.0: // iPhone 7, 8
            return CGSize(width: 123,
                          height: 123)
        default:
            return CGSize(width: 121,
                          height: 121)
        }
    }
}
