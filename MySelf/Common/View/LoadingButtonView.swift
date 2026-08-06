//
//  LoadingButtonView.swift
//  MySelf
//
//  Created by Solon Rios Soares on 06/08/26.
//

import SwiftUI

struct LoadingButtonView: View {
    
    var action: () -> Void
    var text: String
    
    var body: some View {
        ZStack {
            Button {
                action()
            } label: {
                Text("Sign In")
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .padding(.horizontal, 16)
                    .font(Font.system(.title3).bold())
                    .background(Color.cyan)
                    .foregroundColor(Color.white)
                    .cornerRadius(25)
            }
        }
    }
}

#Preview {
    VStack {
        LoadingButtonView(action: {
            print("Action")
        },
        text: "Sign In")
    }.padding()
    
}
