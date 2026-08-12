//
//  EditTextView.swift
//  MySelf
//
//  Created by Solon Rios Soares on 05/08/26.
//

import SwiftUI

struct EditTextView: View {
    
    @Binding var text: String
    
    var placeholder: String = ""
    var keyboardtype: UIKeyboardType = .default
    var error: String? = nil
    var failure: Bool? = false
    var isSecure: Bool = false
    
    var body: some View {
        VStack {
            if isSecure {
                SecureField(placeholder, text: $text)
                    .foregroundColor(Color("textColor"))
                    .keyboardType(keyboardtype)
                    .textFieldStyle(CustomTextFieldStyle())
            } else {
                TextField(placeholder, text: $text)
                    .foregroundColor(Color("textColor"))
                    .keyboardType(keyboardtype)
                    .textFieldStyle(CustomTextFieldStyle())
            }
            
            if let error = error, failure == true,
               !text.isEmpty {
                Text(error).foregroundColor(Color.red)
            }
        }
        .padding(.bottom, 10)
    }
    
}


#Preview {
    VStack {
        EditTextView(text: .constant(""),
                     placeholder: "exmple@gmail.com",
                     error: "invalid email",
                     failure: "a@a.com".count < 3)
        .padding()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
}

