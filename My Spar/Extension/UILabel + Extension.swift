//
//  UILabel + Extension.swift
//  Marvelllll
//
//  Created by Tim Akhmetov on 01.03.2023.
//

import UIKit

extension UILabel {
    
    convenience init(text: String = "", font: UIFont?, color: UIColor, line: Int) {
        self.init()
        
        self.text = text
        self.font = font
        self.textColor = color
        self.numberOfLines = line
        
        self.textAlignment = .natural
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
