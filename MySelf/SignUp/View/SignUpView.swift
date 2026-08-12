//
//  SignUpView.swift
//  MySelf
//
//  Created by Solon Rios Soares on 30/07/26.
//

import SwiftUI

struct SignUpView: View {
    
    @ObservedObject var viewModel: SignUpViewModel
    
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
        EditTextView(text: $viewModel.fullName,
                     placeholder: "full name",
                     error: "invalid full name",
                     failure: viewModel.fullName.count < 3)
    }
}

extension SignUpView {
    var emailField: some View {
        EditTextView(text: $viewModel.email,
                     placeholder: "email",
                     error: "invalid email",
                     failure: viewModel.email.count < 3)
    }
}

extension SignUpView {
    var usernameField: some View {
        EditTextView(text: $viewModel.username,
                     placeholder: "username",
                     error: "invalid username",
                     failure: viewModel.username.count < 3)
    }
}

extension SignUpView {
    var passwordField: some View {
        EditTextView(text: $viewModel.password,
                     placeholder: "password",
                     error: "invalid password",
                     failure: viewModel.password.count < 3)
    }
}

extension SignUpView {
    var confirmPasswordField: some View {
        EditTextView(text: $viewModel.confirmPassword,
                     placeholder: "confirmed password",
                     error: "invalid password",
                     failure: viewModel.confirmPassword.count < 3)
    }
}

extension SignUpView {
    var phoneField: some View {
        EditTextView(text: $viewModel.phone,
                     placeholder: "phone",
                     error: "invalid phone",
                     failure: viewModel.phone.count < 3)
    }
}

extension SignUpView {
    var birhtdateField: some View {
        EditTextView(text: $viewModel.birhtday,
                     placeholder: "phone",
                     error: "invalid phone",
                     failure: viewModel.phone.count < 3)
    }
}

#Preview {
    SignUpView(viewModel: SignUpViewModel())
}
