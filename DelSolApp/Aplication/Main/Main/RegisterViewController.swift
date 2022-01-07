//
//  RegisterViewController.swift
//  DelSolApp
//
//  Created by Karilu Gutierrez Vicente on 29/12/21.
//

import UIKit

class RegisterViewController: UIViewController{


@IBOutlet weak var closeWindows: UIButton!

    @IBOutlet weak var registerTableView: UITableView!
    
    static let identifier = "RegisterViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addListeners()
        registerTableView.delegate = self
        registerTableView.dataSource = self
        registerTableView.register(UINib(nibName: TableViewCell.identifier, bundle: nil), forCellReuseIdentifier: TableViewCell.identifier)
        
    }
        func addListeners(){
            closeWindows.isUserInteractionEnabled = true
    }
        @objc func closeView(){
            dismiss(animated: true)
        }
            
    @IBAction private func OnclickClosed(_ sender: Any){
        dismiss(animated: true, completion: nil)
      
    }
}

extension RegisterViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let registerCell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else { return UITableViewCell() }
        registerCell.selectionStyle = .none
        return registerCell
    }
}
