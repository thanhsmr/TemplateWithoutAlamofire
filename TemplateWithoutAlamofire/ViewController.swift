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
    var firstRequest : URLSessionDataTask!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let au = LoginRequest.init(id: "abc", pass: "xyz")
        self.view.showLoading()
        
        self.firstRequest = self.apiClient.send(apiRequest: au, completion: { (response : ServerResponse) in
            self.view.hideLoading()
            print(response.status)
        }, fail: { (error) in
            self.view.hideLoading()
        })

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

