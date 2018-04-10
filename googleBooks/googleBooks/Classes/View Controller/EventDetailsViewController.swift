//
//  EventDetailsViewController.swift
//  googleBooks
//
//  Created by Maria Ortega on 10/04/2018.
//  Copyright © 2018 Maria Ortega. All rights reserved.
//

import UIKit

class EventDetailsViewController: UIViewController {

    var viewModel : EventViewModel!
    
    @IBOutlet weak var publishedDateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    
    // MARK: - Setup

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }
    
    func setupView() {
        self.titleLabel.text = self.viewModel.title
        self.publishedDateLabel.text = self.viewModel.publishedDate
        self.descriptionTextView.text = self.viewModel.bookDescription
        self.getThumbnailImageFromPath(path: self.viewModel.thumbnail)
    }
    
    func getThumbnailImageFromPath(path: String) {
        ImagesManager().getImageFromURLPath(path: path, completion: { (image) in
            self.thumbnailImage.image = image
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
