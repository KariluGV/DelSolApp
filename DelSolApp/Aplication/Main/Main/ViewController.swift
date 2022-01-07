//
//  ViewController.swift
//  DelSol
//
//  Created by Karilu Gutierrez Vicente on 28/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for family in UIFont.familyNames {
            print(family)
            for name in UIFont.fontNames(forFamilyName: family) {
                    print(name)
            }
        
        }
    }
}

