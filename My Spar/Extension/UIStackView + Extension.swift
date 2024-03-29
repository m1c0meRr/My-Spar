//
//  UIStackView + Extencion.swift
//  nazvanie
//
//  Created by Sergey Savinkov on 02.05.2023.
//

import UIKit

extension UIStackView {
    
    convenience init(addArrangedSubview: [UIView],
                     axis: NSLayoutConstraint.Axis,
                     spacing: CGFloat,
                     aligment: UIStackView.Alignment,
                     destribution: UIStackView.Distribution) {
        
        self.init(arrangedSubviews: addArrangedSubview)
        self.axis = axis
        self.spacing = spacing
        self.alignment = aligment
        self.distribution = destribution
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
