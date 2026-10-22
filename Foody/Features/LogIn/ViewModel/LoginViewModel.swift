//
//  LoginViewModel.swift
//  Foody
//
//  Created by Trung Ng on 5/10/26.
//

import Foundation
import Observation

@Observable
final class LoginViewModel : Sendable {
    private var loginModel: LoginReq
    private var errorMsg: String?

    var showError: Bool {
        get {
            errorMsg != nil
        }
        set {
            if !newValue {
                errorMsg = nil
            }
        }
    }

    init(loginModel: LoginReq) {
        self.loginModel = loginModel
    }
}
