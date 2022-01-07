//
//  LoginTableViewCell.swift
//  DelSolApp
//
//  Created by Karilu Gutierrez Vicente on 05/01/22.
//
protocol LoginTableViewCellDelegate: AnyObject {
    func goToForgetPassword()
    func goToLogin()
    func goToContinueAsGuest()
    func GoToCreateAccount()
}

import UIKit
import Material

class LoginTableViewCell: UITableViewCell {
    
    static let identifer = "LoginTableViewCell"
    weak var delegate: LoginTableViewCellDelegate?
    
    let testEmail = "ejemplo@correo.com"
    let testPasword = "pasword"
    var validate: Bool?
    
    @IBOutlet weak var emailLogin: UITextField!
    @IBOutlet weak var passwordLogin: UITextField!
    @IBOutlet weak var showAndHideLogin: UIButton!
    @IBOutlet weak var forgetMyPassword: UIButton!
    @IBOutlet weak var warningMessage: UILabel!
    @IBOutlet weak var VierWarningMessage: UIView!
    @IBOutlet weak var ContinueLogin: UIButton!
    @IBOutlet weak var continueAsGuest: UIButton!
    @IBOutlet weak var createAcount: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        VierWarningMessage.isHidden = true
        setBorder()
        
    }
    
    func setBorder(){
        VierWarningMessage.clipsToBounds = true
        VierWarningMessage.layer.cornerRadius = CGFloat(10)
        VierWarningMessage.layer.borderColor = UIColor.red.cgColor
        VierWarningMessage.layer.borderWidth = 1
    }
    
    @IBAction private func onClickGoToForgetPassword(_ sender: Any) {
        delegate?.goToForgetPassword()
    }
    
    @IBAction func onClickGoToLogin(_ sender: Any) {
        delegate?.goToLogin()
        if emailLogin.text == testEmail && passwordLogin.text == testPasword {
            DispatchQueue.main.async {
                self.VierWarningMessage.isHidden = true
            }
        } else {
            DispatchQueue.main.async {
                self.VierWarningMessage.isHidden = false
            }
        }
    }
    
    @IBAction func onClickGoToContinueAsGuest(_ sender: Any) {
        delegate?.goToContinueAsGuest()
    }
    
    @IBAction func onClickGoToCreateAccount(_ sender: Any) {
        delegate?.GoToCreateAccount()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    @IBAction func onClickShowAndHidePasswordLogin(_ sender: UIButton) {
        passwordLogin.isSecureTextEntry = !passwordLogin.isSecureTextEntry ? true : false
        showAndHideLogin.setImage(passwordLogin.isSecureTextEntry ? UIImage(named: "MostrarContraseña") : UIImage(named: "OcultarContraseña"), for: .normal)
    }
}














