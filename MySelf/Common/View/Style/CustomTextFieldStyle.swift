//
//  CustomTextFieldStyle.swift
//  MySelf
//
//  Created by Solon Rios Soares on 05/08/26.
//

import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    public func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.horizontal, 8)
            .padding(.vertical, 10)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.cyan, lineWidth: 1)
                    
        )
    }
}
