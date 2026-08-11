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
    
    
    @State var action: Int? = 0
    
    @State var navigationHidden = true
    
    var body: some View {
        ZStack {
            if case SignInUIState.goToHomeScreen = viewModel.uiState { // virifica se o UIState recebe o estado de goToHomeScreen, se receber muda a tela
                HomeView(viewModel: HomeViewModel())
            } else {
                NavigationView {
                    
                    ScrollView(showsIndicators: false) {
                    
                        VStack(alignment: .center, spacing: 20) {
                            Spacer(minLength: 36)
                            
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
                    .padding(.horizontal, 32)
                    .navigationBarTitle("Login", displayMode: .inline)
                    .navigationBarHidden(self.navigationHidden)
                }
            }
        }
        
        
    }
}

extension SignInView {
    var usernameField: some View {
        EditTextView(text: $viewModel.username,
                     placeholder: "Username",
                     error: "invalid username",
                     failure: viewModel.username.count < 5)
    }
}

extension SignInView {
    var passwordField: some View {
        EditTextView(text: $viewModel.password,
                     placeholder: "Password",
                     error: "invalid password",
                     failure: viewModel.password.count < 6,
                     isSecure: true)
    }
}

extension SignInView {
    var signInButton: some View {
        LoadingButtonView(action: {
            viewModel.login(username: viewModel.username, password: viewModel.password)
        },
        text: "Sign In")
        
//        Button("Sign In") {
//            self.viewModel.login(username: self.viewModel.username, password: self.viewModel.password)
//        }
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
                    destination: SignUpView(viewModel: SignUpViewModel()),
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
