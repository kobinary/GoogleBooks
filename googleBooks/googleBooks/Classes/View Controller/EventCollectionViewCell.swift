//
//  EventCollectionViewCell.swift
//  googleBooks
//
//  Created by Maria Ortega on 10/04/2018.
//  Copyright © 2018 Maria Ortega. All rights reserved.
//

import UIKit

class EventCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var smallThumbnailImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorsName: UILabel!
    
    func updateWithViewModel(viewModel: EventViewModel) {
        self.getSmallThumbnailImageFromPath(path: viewModel.smallThumbnail)
        self.titleLabel.text = viewModel.title
        self.authorsName.text = viewModel.authors
        
    }
    
    func getSmallThumbnailImageFromPath(path: String) {
        ImagesManager().getImageFromURLPath(path: path, completion: { (image) in
            self.smallThumbnailImage.image = image
        })
    }
    
}
