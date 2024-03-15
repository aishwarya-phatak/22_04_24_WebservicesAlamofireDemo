//
//  ViewController.swift
//  22_04_24_WebservicesAlamofireDemo
//
//  Created by Vishal Jagtap on 15/03/24.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    var url : URL = URL(string : "https://jsonplaceholder.typicode.com/comments")!
    var urlRequest : URLRequest?
    var comments : [Comment] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        urlRequest = URLRequest(url: url)
        jsonParsingWithAlamofire(urlRequest : urlRequest!)
    }
    
    func jsonParsingWithAlamofire(urlRequest : URLRequest){
        AF.request(urlRequest).response { response in
            
            switch response.result{
            case .success(let data):
                self.comments = try! JSONDecoder().decode([Comment].self, from: data!)
                print(self.comments)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
