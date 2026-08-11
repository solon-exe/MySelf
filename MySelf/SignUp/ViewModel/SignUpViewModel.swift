//
//  SignUpViewModel.swift
//  MySelf
//
//  Created by Solon Rios Soares on 10/08/26.
//

import SwiftUI
import Combine

class SignUpViewModel: ObservableObject {
    
    @Published var fullName: String = ""
    @Published var email: String = ""
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""
    @Published var phone: String = ""
    @Published var birhtday: String = ""
    
}
