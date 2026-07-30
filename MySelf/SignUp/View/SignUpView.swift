//
//  SignUpView.swift
//  MySelf
//
//  Created by Solon Rios Soares on 30/07/26.
//

import SwiftUI

struct SignUpView: View {
    
    @State var fullName: String = ""
    @State var email: String = ""
    @State var username: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    @State var phone: String = ""
    @State var birhtdate: String = ""
    // TODO: gender
    
    var body: some View {
        
        ScrollView() {
            VStack(alignment: .leading) {
                Text("Sign Up")
                    .font(Font.largeTitle.bold())
                    .foregroundColor(.cyan)
                Text("Please fill in the fields below")
                    .font(.body)
                    .foregroundColor(.gray)
                
                VStack(spacing: 16) {
                    fullNameField
                    
                    emailField
                    
                    usernameField
                    
                    passwordField
                    
                    confirmPasswordField
                    
                    phoneField
                }
                
            }
        }
        
    }
}

extension SignUpView {
    var fullNameField: some View {
        TextField("Full Name", text: $fullName)
            .border(Color.cyan)
    }
}

extension SignUpView {
    var emailField: some View {
        TextField("Email", text: $email)
            .border(Color.black)
    }
}

extension SignUpView {
    var usernameField: some View {
        TextField("Username", text: $username)
            .border(Color.cyan)
    }
}

extension SignUpView {
    var passwordField: some View {
        TextField("Password", text: $password)
            .border(Color.black)
    }
}

extension SignUpView {
    var confirmPasswordField: some View {
        TextField("Confirm Password", text: $confirmPassword)
            .border(Color.cyan)
    }
}

extension SignUpView {
    var phoneField: some View {
        TextField("Phone", text: $phone)
            .border(Color.black)
    }
}

extension SignUpView {
    var birhtdateField: some View {
        TextField("Birthdate", text: $birhtdate)
            .border(Color.cyan)
    }
}

#Preview {
    SignUpView()
}
