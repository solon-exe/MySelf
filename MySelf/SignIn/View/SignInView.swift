//
//  SignInView.swift
//  MySelf
//
//  Created by Solon Rios Soares on 27/07/26.
//

import SwiftUI

struct SignInView: View {
    
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
                
                passwordfield
                    
                Button {
                    
                } label: {
                    Text("Sign In")
                }
                .padding(16)

            }

        }
        
    }
}

extension SignInView {
    var usernameField: some View {
        TextField("Username", text: $username)
            .padding(16)
            .border(Color.gray)
    }
}

extension SignInView {
    var passwordfield: some View {
        SecureField("Password", text: $password)
            .padding(16)
            .border(Color.gray)
    }
}

#Preview {
    SignInView()
}
