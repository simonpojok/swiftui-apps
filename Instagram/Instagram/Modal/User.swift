//
//  User.swift
//  Instagram
//
//  Created by Simon Peter Ojok on 16/07/2022.
//

import Foundation

struct User {
    let email: String
    let fullname: String
    let profileImageUrl: String
    let username: String
    let uid: String
    
    init(data: [String: Any]) {
        self.email = data["email"] as? String ?? ""
        self.fullname = data["fullname"] as? String ?? ""
        self.profileImageUrl = data["profileImageUrl"] as? String ?? ""
        self.username = data["username"] as? String ?? ""
        self.uid = data["uid"] as? String ?? ""
    }
}
