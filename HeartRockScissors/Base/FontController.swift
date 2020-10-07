//
//  UIAlertController.swift
//  HeartRockScissors
//
//  Created by Denis on 11/8/20.
//  Copyright © 2020 Denis Skuratovich. All rights reserved.
//


import UIKit

class FontController: UIViewController {

    static let instance = FontController()
    
    func setMessage(font: UIFont?, message: String) -> NSMutableAttributedString {

           let attributeString = NSMutableAttributedString(string: message)
           if let messageFont = font {
               attributeString.addAttributes([NSAttributedString.Key.font: messageFont],
                                             range: NSMakeRange(0, message.count))
        }
        return attributeString
    }
}
