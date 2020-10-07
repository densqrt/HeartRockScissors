//
//  BaseController.swift
//  HeartRockScissors
//
//  Created by Denis on 11/8/20.
//  Copyright © 2020 Denis Skuratovich. All rights reserved.
//

import UIKit

class BaseController: UIViewController {
    
    func presentAlert(title: String, message: String, actionTitle: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: actionTitle, style: .default)
        alertController.addAction(action)
        
//        alertController.setMessage(font: UIFont.systemFont(ofSize: 60))
        
        
        self.present(alertController, animated: true)
    }
}


