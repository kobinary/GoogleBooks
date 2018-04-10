//
//  DataManagerViewController.swift
//  googleBooks
//
//  Created by Maria Ortega on 10/04/2018.
//  Copyright © 2018 Maria Ortega. All rights reserved.
//
import UIKit
import KRProgressHUD

class DataManagerViewController: UIViewController {
    
    
    // MARK: - Setup
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    func setup() {
        SpinnerHelper().startSpinner()
        self.getEventsListData()
    }
    
    func getEventsListData() {
        APINetworkRequest().getEvents { (viewModel) in
            if (viewModel?.events.count)! > 0 {
                SpinnerHelper().stopSpinner()
                self.loadEventsListingView(viewModel: viewModel!)
            }
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: - Navigation
    
    func loadEventsListingView(viewModel: EventsListViewModel) {
        let navigationVC = self.storyboard!.instantiateViewController(withIdentifier: "loadEvents") as! UINavigationController
        let eventsVC = navigationVC.viewControllers.first as! EventsCollectionViewController
        eventsVC.viewModel = viewModel
        self.present(navigationVC, animated: true, completion: nil)
    }

}
