//
//  UITextField+Extension.swift
//  TrendMedia
//
//  Created by 최형민 on 2022/07/19.
//

import UIKit

extension UITextField {
    
    func designBorder() {
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1.0
        self.borderStyle = .none
        
    }
}
