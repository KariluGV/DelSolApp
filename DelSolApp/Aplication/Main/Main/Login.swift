//
//  Login.swift
//  DelSol
//
//  Created by Karilu Gutierrez Vicente on 28/12/21.
//

import UIKit

class Login: UIViewController {
    
    @IBOutlet weak var loginTableView: UITableView!
    @IBOutlet weak var conditionsAndPrivacyLogin: UILabel!

    
    static let identifier = "Login"
    
    let testEmail = "ejemplo@correo.com"
    let testPasword = "pasword"
    var validate: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTableView.delegate = self
        loginTableView.dataSource = self
        loginTableView.register(UINib(nibName: LoginTableViewCell.identifer, bundle: nil), forCellReuseIdentifier: LoginTableViewCell.identifer)
        let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue]
        let underlineAttributedString = NSAttributedString(string: "Condiciones y Privacidad", attributes: underlineAttribute)
        conditionsAndPrivacyLogin.attributedText = underlineAttributedString
    }
    

    @IBAction func onClickGoToRegister(_ sender: Any) {
        let vc = RegisterViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
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


