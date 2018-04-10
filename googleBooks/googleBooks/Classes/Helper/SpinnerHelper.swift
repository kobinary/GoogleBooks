//
//  SpinnerHelper.swift
//  googleBooks
//
//  Created by Maria Ortega on 10/04/2018.
//  Copyright © 2018 Maria Ortega. All rights reserved.
//

import UIKit
import KRProgressHUD

class SpinnerHelper: NSObject {

    // MARK: - Spinner Methods
    
    func startSpinner() {
        KRProgressHUD
            .set(style: .custom(background: .clear, text: .white, icon: nil))
            .set(maskType: .white)
            .set(activityIndicatorViewStyle: .color(UIColor.white))
            .show()
    }
    
    func stopSpinner() {
        KRProgressHUD.dismiss()
    }
}
