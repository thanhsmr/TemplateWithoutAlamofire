//
//  LoginViewController.swift
//  TemplateWithoutAlamofire
//
//  Created by thanh bv on 11/22/18.
//  Copyright © 2018 ThanhBV. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {
    
    var presenter : LoginVTPprotocol?

    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func btnLoginTUI(_ sender: Any) {
        presenter?.login(username: tfUsername.text!, password: tfPassword.text!)
    }
    
}

extension LoginViewController : LoginPTVprotocol {
    func showSuccess() {
        
    }
    
    func showError() {
        
    }
}
