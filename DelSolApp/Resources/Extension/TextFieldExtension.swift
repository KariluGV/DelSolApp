//
//  TextFieldExtension.swift
//  DelSolApp
//
//  Created by Karilu Gutierrez Vicente on 04/01/22.
//

import UIKit
import Material

extension TextField {
    func prepareStylesTextfields(color: UIColor){
        self.placeholderActiveColor = color
        self.dividerActiveColor = color
    }
    
    @objc func validateTextFields() {
        if self.text == "" || self.text == nil || self.text == " " {
            self.dividerNormalColor = .red
        } else {
            self.dividerNormalColor = .gray
        }
    }
}
