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
    
    @State var action: Int? = 0
    
    var body: some View {
        ZStack {
            if case SignInUIState.goToHomeScreen = viewModel.uiState { // virifica se o UIState recebe o estado de goToHomeScreen, se receber muda a tela
                Text("home")
            } else {
                NavigationView {
                    
                    ScrollView(showsIndicators: false) {
                        
                        VStack(alignment: .center, spacing: 8) {
                            
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
                            
                            signUpLink
                           
                        }
                    }
                }
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

extension SignInView {
    var signUpLink: some View {
        VStack(alignment: .center) {
            Text("Don't have an account?")
                .foregroundColor(.gray)
                .padding(25)
            
            ZStack {
                NavigationLink(
                    destination: SignUpView(),
                    tag: 1,
                    selection: $action,
                    label: { EmptyView() })
                    
                Button("Sign Up") {
                    self.action = 1
                }
            }
        }
    }
}

#Preview {
    SignInView(viewModel: SignInViewModel())
}
