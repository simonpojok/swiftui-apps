//
//  UserService.swift
//  Instagram
//
//  Created by Simon Peter Ojok on 16/07/2022.
//

import Foundation
import Firebase

struct UserService {
    static func fetchUser(completion: @escaping(User) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        COLLECTION_USERS.document(uid).getDocument { snapshot, error in
            guard let data = snapshot?.data() else { return }
            let user = User(data: data)
            completion(user)
        }
    }
}
