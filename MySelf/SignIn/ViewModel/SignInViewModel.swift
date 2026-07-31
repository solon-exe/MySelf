//
//  SignInViewModel.swift
//  MySelf
//
//  Created by Solon Rios Soares on 27/07/26.
//

import SwiftUI
import Combine

class SignInViewModel: ObservableObject {
    
    @Published var uiState: SignInUIState = .none
    
    func login(username _: String, password _: String) {
        self.uiState = .loading
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { // silacao de uma requisicao web
            self.uiState = .goToHomeScreen // vai pra tela home
        }
    }
}

//extension SignInViewModel {
//    func homeView() -> some View {
//        SignInViewRouter
//    }
//}
