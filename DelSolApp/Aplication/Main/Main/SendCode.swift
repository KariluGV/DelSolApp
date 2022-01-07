//
//  SendCode.swift
//  DelSolApp
//
//  Created by Karilu Gutierrez Vicente on 29/12/21.
//

import UIKit

class SendCode: UIViewController {
    
    
    @IBOutlet weak var closeView: UIButton!
    
    
    
    static let identifier = "sendCode"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        }
    
    
    @IBAction func onClickCloseWindow(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
}
