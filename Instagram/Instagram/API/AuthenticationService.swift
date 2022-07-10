//
//  AuthenticationService.swift
//  Instagram
//
//  Created by Simon Peter Ojok on 10/07/2022.
//

import UIKit
import Firebase

struct AuthCredential {
    let email: String
    let password: String
    let fullname: String
    let username: String
    let profileImage: UIImage
}

struct AuthenticationService {
    static func registerUser(withCredential credential: AuthCredential, completion: @escaping(Error?) -> Void ) {
        
        ImageUploader.uploadImage(image: credential.profileImage) { imageUrl in
            
            Auth.auth().createUser(withEmail: credential.email, password: credential.password) {(result, error) in
                if let error = error {
                    print("DEBUG: Failed to register user \(error.localizedDescription)")
                    return
                }
                
                guard let uid = result?.user.uid else { return }
                let data: [String: Any] = [
                    "email": credential.email,
                    "fullname": credential.fullname,
                    "profileImageUrl": imageUrl,
                    "uid": uid,
                    "username": credential.username
                ]
                
                Firestore.firestore().collection("users").document(uid).setData(data, completion: completion)
            }
        }
    }
}
