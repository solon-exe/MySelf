//
//  SplashView.swift
//  MySelf
//
//  Created by Solon Rios Soares on 27/07/26.
//

import SwiftUI

struct SplashView: View {
    
    @ObservedObject var viewModel: SplashViewModel
    
    var body: some View {
        Group {
            switch viewModel.uiState {
            case .loading:
                loadingView()
            case . goToSignInScreen:
                Text("login")
            case .goToHomeScreen:
                Text("Home")
            case .error(let msg):
                loadingView(error: msg)
            }
        }.onAppear(perform: {
            viewModel.onAppear()
        })
    }
}

extension SplashView {
    func loadingView(error: String? = nil) -> some View {
        ZStack {
            Image("MySelf_logo")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.tint)
            
            if let error = error {
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(
                            title: Text("MySelf"),
                            message: Text(error),
                            dismissButton: .default(Text("Ok")) {
                                // faz algo quando some o alerta
                            })
                    }
            }
        }
    }
}

#Preview {
    SplashView(viewModel: SplashViewModel())
}
