//
//  ImagesManager.swift
//  googleBooks
//
//  Created by Maria Ortega on 10/04/2018.
//  Copyright © 2018 Maria Ortega. All rights reserved.
//

import UIKit

class ImagesManager: NSObject {
    
    func getImageFromURLPath(path: String, completion: @escaping (UIImage) -> Void) {
        let imageUrl: URL = URL(string: path)!
        
        DispatchQueue.global(qos: .userInitiated).async {
            let imageData: NSData = NSData(contentsOf: imageUrl)!
            DispatchQueue.main.async {
                let image = UIImage(data: imageData as Data)
                completion(image!)
            }
        }
    }
    
}
