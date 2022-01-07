//
//  TableViewCell.swift
//  DelSolApp
//
//  Created by Karilu Gutierrez Vicente on 02/01/22.
//

import UIKit
import Material

class TableViewCell: UITableViewCell {
    
    static let identifier = "TableViewCell"
    var selectedWoman = false
    var selectedMen = false
    
    @IBOutlet weak var Names: TextField!
    @IBOutlet weak var obligatoryFieldName: UILabel!
    @IBOutlet weak var lastName: TextField!
    @IBOutlet weak var obligatoryFieldLastName: UILabel!
    @IBOutlet weak var emailRegister: TextField!
    @IBOutlet weak var obligatoryFieldEmail: UILabel!
    @IBOutlet weak var obligatoryFieldPassword: UILabel!
    @IBOutlet weak var passwordRegister: TextField!
    @IBOutlet weak var ConfirmPassword: TextField!
    @IBOutlet weak var obligatoryFieldConfirPassword: UILabel!
    @IBOutlet weak var eyePasword1: UIButton!
    @IBOutlet weak var eyePassword2: UIButton!
    @IBOutlet weak var WomenButton: UIButton!
    @IBOutlet weak var menButton: UIButton!
    @IBOutlet weak var termsConditions: UIButton!
    @IBOutlet weak var continueRegistration: UIButton!
    @IBOutlet weak var labelWomen: UILabel!
    @IBOutlet weak var labelMen: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureUI()
        listenersTextFields()
        obligatoryFieldName.isHidden = true
        obligatoryFieldLastName.isHidden = true
        obligatoryFieldEmail.isHidden = true
        obligatoryFieldPassword.isHidden = true
        obligatoryFieldConfirPassword.isHidden = true
        //        textFieldDidBeginEditing(textField: Names)
        //        textFieldDidBeginEditing(textField: lastName)
        //        textFieldDidBeginEditing(textField: emailRegister)
        //        textFieldDidBeginEditing(textField: passwordRegister)
        //        textFieldDidBeginEditing(textField: confirmPassword)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureUI(){
        Names.prepareStylesTextfields(color: .gray)
        lastName.prepareStylesTextfields(color: .gray)
        emailRegister.prepareStylesTextfields(color: .gray)
        passwordRegister.prepareStylesTextfields(color: .gray)
        ConfirmPassword.prepareStylesTextfields(color: .gray)
        
    }
    
    func listenersTextFields(){
        Names.addTarget(self, action: #selector(validateTextFields), for: .allEditingEvents)
        lastName.addTarget(self, action: #selector(validateTextFields), for: .allEditingEvents)
        emailRegister.addTarget(self, action: #selector(validateTextFields), for: .allEditingEvents)
        passwordRegister.addTarget(self, action: #selector(validateTextFields), for: .allEditingEvents)
        ConfirmPassword.addTarget(self, action: #selector(validateTextFields), for: .allEditingEvents)
    }
    
    @objc func validateTextFields(){
        Names.validateTextFields()
        lastName.validateTextFields()
        emailRegister.validateTextFields()
        passwordRegister.validateTextFields()
        ConfirmPassword.validateTextFields()
    }
    
    @IBAction func showAndHidePassword(_ sender: UIButton) {
        passwordRegister.isSecureTextEntry = !passwordRegister.isSecureTextEntry ?  true : false
        eyePasword1.setImage(passwordRegister.isSecureTextEntry ? UIImage(named: "MostrarContraseña") : UIImage(named: "OcultarContraseña"), for: .normal)
        
    }
    
    @IBAction func showAndHidePasswordConfirm(_ sender: UIButton) {
        ConfirmPassword.isSecureTextEntry = !ConfirmPassword.isSecureTextEntry ? true : false
        eyePassword2.setImage(ConfirmPassword.isSecureTextEntry ? UIImage(named: "MostrarContraseña") : UIImage(named: "OcultarContraseña"), for: .normal)
    }
    
    @IBAction func onClickContinueRegister(_ sender: Any) {
        obligatoryFieldName.isHidden = Names.text == "" ? false : true
        obligatoryFieldLastName.isHidden = lastName.text == "" ? false : true
        obligatoryFieldEmail.isHidden = emailRegister.text == "" ? false : true
        obligatoryFieldPassword.isHidden = passwordRegister.text == "" ? false : true
        obligatoryFieldConfirPassword.isHidden = ConfirmPassword.text == "" ? false : true
    }
    
    @IBAction func onClickSelectionWomen(_ sender: UIButton) {
        selectedWoman = !selectedWoman
        WomenButton.setImage(selectedWoman ? UIImage(named: "radioOn") : UIImage(named: "radioOff"), for: .normal)
        selectedMen = false
        menButton.setImage(UIImage(named: "radioOff"), for: .normal)
    }
    
    @IBAction func onClickSelectionMen(_ sender: UIButton) {
        selectedMen = !selectedMen
        menButton.setImage(selectedMen ? UIImage(named: "radioOn") : UIImage(named: "radioOff"), for: .normal)
        selectedWoman = false
        WomenButton.setImage(UIImage(named: "radioOff"), for: .normal)
    }
}




