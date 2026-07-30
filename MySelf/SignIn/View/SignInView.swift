//
//  SignInView.swift
//  MySelf
//
//  Created by Solon Rios Soares on 27/07/26.
//

import SwiftUI
import Combine

struct SignInView: View {
    
    @ObservedObject var viewModel: SignInViewModel
    
    
    @State var username: String = ""
    @State var password: String = ""

    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center) {
                Image("MySelf_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 220)

                Text("Login")
                    .foregroundColor(.blue)
                    .font(Font.system(.title).bold())
                    .padding(8)

                usernameField

                passwordField

                signInButton
               
            }
        }
    }
}

extension SignInView {
    var usernameField: some View {
        TextField("Username", text: self.$username)
            .padding(16)
            .border(Color.gray)
    }
}

extension SignInView {
    var passwordField: some View {
        SecureField("Password", text: self.$password)
            .padding(16)
            .border(Color.gray)
    }
}

extension SignInView {
    var signInButton: some View {
        Button("Sign In") {
            self.viewModel.login(username: self.username, password: self.password)
        }
    }
}

#Preview {
    SignInView(viewModel: SignInViewModel())
}
