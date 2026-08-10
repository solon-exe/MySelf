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
    @State var birhtday: String = ""
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
                    
                    phoneField
                }
                
            }
        
        }
        .padding()
        
    }
}

extension SignUpView {
    var fullNameField: some View {
        EditTextView(text: $fullName,
                     placeholder: "full name",
                     error: "invalid full name",
                     failure: fullName.count < 3)
    }
}

extension SignUpView {
    var emailField: some View {
        EditTextView(text: $email,
                     placeholder: "email",
                     error: "invalid email",
                     failure: email.count < 3)
    }
}

extension SignUpView {
    var usernameField: some View {
        EditTextView(text: $username,
                     placeholder: "username",
                     error: "invalid username",
                     failure: username.count < 3)
    }
}

extension SignUpView {
    var passwordField: some View {
        EditTextView(text: $password,
                     placeholder: "password",
                     error: "invalid password",
                     failure: password.count < 3)
    }
}

extension SignUpView {
    var confirmPasswordField: some View {
        EditTextView(text: $confirmPassword,
                     placeholder: "confirmed password",
                     error: "invalid password",
                     failure: confirmPassword.count < 3)
    }
}

extension SignUpView {
    var phoneField: some View {
        EditTextView(text: $phone,
                     placeholder: "phone",
                     error: "invalid phone",
                     failure: phone.count < 3)
    }
}

extension SignUpView {
    var birhtdateField: some View {
        EditTextView(text: $birhtday,
                     placeholder: "phone",
                     error: "invalid phone",
                     failure: phone.count < 3)
    }
}

#Preview {
    SignUpView()
}
