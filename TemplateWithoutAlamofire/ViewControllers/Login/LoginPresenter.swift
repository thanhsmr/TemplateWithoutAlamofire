//
//  File.swift
//  TemplateWithoutAlamofire
//
//  Created by thanh bv on 11/22/18.
//  Copyright © 2018 ThanhBV. All rights reserved.
//

import Foundation
import UIKit

class LoginPresenter: LoginVTPprotocol {
    var view : LoginPTVprotocol?
    var interector : LoginPTIprotocol?
    var router : LoginPTRprotocol?
    
    func login(username: String, password: String) {
        interector?.fetchLogin()
    }
}

extension LoginPresenter : LoginITPprotocol {
    func loginFetched() {
        
    }
    
    func loginFetchedError() {
        
    }
}
