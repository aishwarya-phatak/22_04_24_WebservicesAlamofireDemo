//
//  SecondViewController.swift
//  22_04_24_WebservicesAlamofireDemo
//
//  Created by Vishal Jagtap on 19/03/24.
//

import UIKit
import Alamofire

class SecondViewController: UIViewController {
    var url : URL?
    var parameters : [String:Any]?

    override func viewDidLoad() {
        super.viewDidLoad()
        url = URL(string:"https://reqres.in/api/users")
        parameters = ["name": "morpheus",
                      "job": "leader"]
        postAPI(url: url!, parameters: parameters!)
    }
    
    func postAPI(url : URL, parameters : Dictionary<String, Any>){
        AF.request(url,
                   method: .post,
                   parameters: parameters,
                   encoding: JSONEncoding.default).response { response in
            switch response.result{
            case .success(let data):
                print(data!)
                print(response.result)
            case .failure(let error):
                print(error)
            }
        }
    }
}
