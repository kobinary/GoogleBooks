//
//  EventsCollectionViewController.swift
//  googleBooks
//
//  Created by Maria Ortega on 10/04/2018.
//  Copyright © 2018 Maria Ortega. All rights reserved.
//

import UIKit

private let reuseIdentifier = "eventCell"
private let segueIdentifier  = "eventDetails"


class EventsCollectionViewController: UICollectionViewController {

    var viewModel : EventsListViewModel!

    
    // MARK: - Setup

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.collectionView?.collectionViewLayout = EventsCollectionViewFlowLayout.layout
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.events.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! EventCollectionViewCell
        let viewModelCell : EventViewModel = viewModel.events[indexPath.row]
        cell.updateWithViewModel(viewModel: viewModelCell)
        return cell
    }
    
    
    // MARK: Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueIdentifier {
            let eventCell : EventCollectionViewCell = sender as! EventCollectionViewCell
            let indexPath : NSIndexPath =  collectionView?.indexPath(for: eventCell)! as! NSIndexPath
            let viewModelCell = self.viewModel.events[indexPath.row]
            let detailVC = segue.destination as! EventDetailsViewController
            detailVC.viewModel = viewModelCell
        }
    }

}
