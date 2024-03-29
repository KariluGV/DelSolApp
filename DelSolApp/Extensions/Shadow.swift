//
//  Shadow.swift
//  DelSolApp
//
//  Created by Karilu Gutierrez Vicente on 28/12/21.
//

import UIKit

extension UIView {
    var borderUIColor: UIColor {
        get {
            guard let color = layer.borderColor else {
                return UIColor.black
        }
            return UIColor(cgColor: color)
    }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
}
    
