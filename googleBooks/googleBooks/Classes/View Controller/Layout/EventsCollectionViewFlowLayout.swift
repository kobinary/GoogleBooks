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
        flow.minimumInteritemSpacing = 5
        flow.minimumLineSpacing = 5
        flow.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 5)
        flow.scrollDirection = .vertical
        return flow
    }()
    
    static func cellSize() -> CGSize {
        switch UIScreen.main.nativeBounds.height {
        case 1920.0, 2208.0: // Plus
            return CGSize(width: 195,
                          height: 215)
        case 1136.0: // iPhone SE
            return CGSize(width: 145,
                          height: 205)
        case 1334.0: // iPhone 7, 8
            return CGSize(width: 175,
                          height: 205)
        default:
            return CGSize(width: 195,
                          height: 215)
        }
    }
}
