//
//  AuthRequest.swift
//  OrderApp
//
//  Created by ThanhBV6878 on 4/23/18.
//  Copyright © 2018 Mèo Béo. All rights reserved.
//

import Foundation


class LoginRequest: APIRequest {
    var method = RequestType.POST
    var path = Constants.API.RefreshAccessToken
    var parameters = [String: String]()
    
    init(id: String, pass: String) {
        parameters[Constants.Parameter.UserNameHeader] = id
        parameters[Constants.Parameter.PasswordHeader] = pass
    }
}
