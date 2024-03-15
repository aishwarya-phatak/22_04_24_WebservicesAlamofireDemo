//
//  Comment.swift
//  22_04_24_WebservicesAlamofireDemo
//
//  Created by Vishal Jagtap on 15/03/24.
//

import Foundation
struct Comment : Decodable{
    var postId : Int
    var id : Int
    var name : String
    var email : String
    var body : String
}
