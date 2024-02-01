//
//  UIView + Extencion.swift
//  nazvanie
//
//  Created by Sergey Savinkov on 07.04.2023.
//

import UIKit

extension UIView {
    
    func addShadowOnView(opacity: Float, radius: CGFloat) {
        layer.shadowColor = UIColor.black.cgColor
        layer.masksToBounds = false
        layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        layer.shadowOpacity = opacity
        layer.shadowRadius = radius
        
    }
}
