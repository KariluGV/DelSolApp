//
//  ForgetPasswordViewController.swift
//  DelSolApp
//
//  Created by Karilu Gutierrez Vicente on 28/12/21.
//

import UIKit
import Material

class ForgetPasswordViewController: UIViewController {
    
    @IBOutlet weak var Email: TextField!
    @IBOutlet weak var incorrectEmail: UIView!
    @IBOutlet weak var sendCodeContinue: UIButton!
    @IBOutlet weak var notCount: UIButton!
    @IBOutlet weak var creteAccount: UIButton!
    @IBOutlet weak var closeWindow: UIButton!
    
    static let identifier = "ForgetPasswordViewController"
    
    let testEmail = "ejemplo@correo.com"
    var validateEmail: Bool?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        incorrectEmail.isHidden = true
        Email.prepareStylesTextfields(color: .gray)
    }
    
    @objc func closeView(){
        dismiss(animated: true)
    }
    
    @IBAction private func onClickSendCode(_ sender: Any) {
        let vc = SendCode ()
        vc.modalPresentationStyle = .fullScreen
        if Email.text == testEmail { DispatchQueue.main.async {
            self.incorrectEmail.isHidden = true
            self.present(vc, animated: true, completion: nil)
         }
        } else {
            DispatchQueue.main.async {
            self.incorrectEmail.isHidden = false
            }
        }
    }
    
    @IBAction private func onClickCloseWindow(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction private func onClickCreateAcconunt(_ sender: Any) {
        let vc = RegisterViewController ()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    
    }
}
