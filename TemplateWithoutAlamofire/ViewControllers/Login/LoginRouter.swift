//
//  LoginRouter.swift
//  TemplateWithoutAlamofire
//
//  Created by thanh bv on 11/22/18.
//  Copyright © 2018 ThanhBV. All rights reserved.
//

import Foundation
import UIKit

class LoginRouter: LoginPTRprotocol {
    
    func createModule() -> BaseViewController {
        let view = LoginViewController.fromNib()
        
        var presenter : LoginVTPprotocol & LoginITPprotocol = LoginPresenter()
        let interactor : LoginPTIprotocol = LoginIterector()
        let router : LoginPTRprotocol = LoginRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interector = interactor
        presenter.router = router
        
        return view
    }
    
}
