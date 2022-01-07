//
//  Login.swift
//  DelSol
//
//  Created by Karilu Gutierrez Vicente on 28/12/21.
//

import UIKit

class Login: UIViewController {
    
    @IBOutlet weak var loginTableView: UITableView!
    
    static let identifier = "Login"
    
//    @IBOutlet weak var emailButton: UITextField!
//    @IBOutlet weak var pasword: UITextField!
//    @IBOutlet weak var forgetPasword: UIButton!
//    @IBOutlet weak var continueButton: UIButton!
//    @IBOutlet weak var continueInvited: UIButton!
//    @IBOutlet weak var createAcount: UIButton!
//    @IBOutlet weak var warningMessage: UIView!
//    @IBOutlet weak var eyePasswordLogin: UIButton!
    
    
    let testEmail = "ejemplo@correo.com"
    let testPasword = "pasword"
    var validate: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTableView.delegate = self
        loginTableView.dataSource = self
        loginTableView.register(UINib(nibName: LoginTableViewCell.identifer, bundle: nil), forCellReuseIdentifier: LoginTableViewCell.identifer)
    }
    
//    func setBorder(){
//        warningMessage.clipsToBounds = true
//        warningMessage.layer.cornerRadius = CGFloat (10)
//        warningMessage.layer.borderColor = UIColor.red.cgColor
//        warningMessage.layer.borderWidth = 1
//    }
    
    @IBAction private func onClickGoToForgetPasword(_ sender: Any) {
        let vc = ForgetPasswordViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
//    @IBAction func onClickContinue(_ sender: Any) {
//        if emailButton.text == testEmail && pasword.text == testPasword {
//            DispatchQueue.main.async {
//                self.warningMessage.isHidden = true
//            }
//        } else {
//            DispatchQueue.main.async {
//                self.warningMessage.isHidden = false
//            }
//        }
//    }
    
    @IBAction func onClickGoToRegister(_ sender: Any) {
        let vc = RegisterViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
    
//    @IBAction func ShowAndHidePasswordLogin(_ sender: Any) {
//        pasword.isSecureTextEntry = !pasword.isSecureTextEntry ? true : false
//    }
}

extension Login: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let loginCell = tableView.dequeueReusableCell(withIdentifier: LoginTableViewCell.identifer, for: indexPath) as? LoginTableViewCell else { return UITableViewCell () }
        loginCell.selectionStyle = .none
        loginCell.delegate = self
        return loginCell
    }
}

extension Login: LoginTableViewCellDelegate {
    func goToLogin() {
    }
    
    func goToContinueAsGuest() {
        
    }
    
    func GoToCreateAccount() {
        let vc = RegisterViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true, completion: nil)
    }
    
    func goToForgetPassword() {
        let vc = ForgetPasswordViewController()
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true, completion: nil)
    }
}


