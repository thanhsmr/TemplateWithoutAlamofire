//
//  ViewController.swift
//  TemplateWithoutAlamofire
//
//  Created by ThanhBV6878 on 5/2/18.
//  Copyright © 2018 ThanhBV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let apiClient = APIClient()
    var firstRequest : URLRequest!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let au = LoginRequest.init(id: "abc", pass: "xyz")
        firstRequest = apiClient.send(apiRequest: au, completion: { (response : ServerResponse) in
            print(response.status)
        }, fail: { (error) in
            
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

