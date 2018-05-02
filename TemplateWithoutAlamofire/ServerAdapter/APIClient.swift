//
//  APIClient.swift
//  OrderApp
//
//  Created by ThanhBV6878 on 4/23/18.
//  Copyright © 2018 Mèo Béo. All rights reserved.
//

import Foundation


class APIClient {
    private let baseURL = URL(string: Constants.API.baseURL)!
    
    func send<T: Codable>(apiRequest: APIRequest, completion : @escaping (_ response: T) -> (), fail: @escaping (Error) -> Void) -> URLRequest {
            let request = apiRequest.request(with: self.baseURL)
            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                do {
                    let model: T = try JSONDecoder().decode(T.self, from: data ?? Data())
                    completion(model)
                } catch let error {
                    print("error" + error.localizedDescription)
                    fail(error)
                }
            }
            task.resume()
            return request
        }
    
}
