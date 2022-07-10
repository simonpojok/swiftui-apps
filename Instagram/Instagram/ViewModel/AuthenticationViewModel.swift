//
//  AuthenticationViewModel.swift
//  Instagram
//
//  Created by Simon Peter Ojok on 10/07/2022.
//

import Foundation
import UIKit

protocol FormViewModel {
    func updateForm()
}

protocol AuthenticationViewModel {
    var formIsValid: Bool { get }
    var buttonBackgroundColor: UIColor { get }
    var buttonTitleColor: UIColor { get }
}

struct LoginViewModel: AuthenticationViewModel {
    var email: String?
    var password: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false
    }
    
    var buttonBackgroundColor: UIColor {
        return formIsValid ? .systemBlue : .systemGray
    }
    
    var buttonTitleColor: UIColor {
        return formIsValid ? .white : UIColor(white: 1, alpha: 0.67)
    }
    
}

struct RegistrationViewModel: AuthenticationViewModel {
    var email: String?
    var password: String?
    var fullName: String?
    var username: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false
        && password?.isEmpty == false
        && fullName?.isEmpty == false
        && username?.isEmpty == false
    }
    var buttonBackgroundColor: UIColor {
        return formIsValid ? .systemBlue : .systemGray
    }
    var buttonTitleColor: UIColor {
        return formIsValid ? .white : UIColor(white: 1, alpha: 0.67)
    }
    
}
