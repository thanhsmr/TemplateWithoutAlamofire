//
//  LoginProtocols.swift
//  TemplateWithoutAlamofire
//
//  Created by thanh bv on 11/22/18.
//  Copyright © 2018 ThanhBV. All rights reserved.
//

import Foundation
import UIKit

protocol LoginPTVprotocol {
    func showSuccess()
    func showError()
}

protocol LoginITPprotocol {
    func loginFetched()
    func loginFetchedError()
}

protocol LoginPTIprotocol {
    var presenter: LoginITPprotocol? {get set}
    func fetchLogin()
}

protocol LoginPTRprotocol {
    func createModule() -> BaseViewController
}

protocol LoginVTPprotocol {
    var view : LoginPTVprotocol? {get set}
    var interector : LoginPTIprotocol? {get set}
    var router : LoginPTRprotocol? {get set}
    func login(username: String, password: String)
}
