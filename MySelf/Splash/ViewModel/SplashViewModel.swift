//
//  SplashViewModel.swift
//  MySelf
//
//  Created by Solon Rios Soares on 27/07/26.
//

import SwiftUI
import Combine

final class SplashViewModel: ObservableObject {
    
    @Published var uiState: SplashUIState = .loading
    
    func onAppear() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.uiState = .goToSignInScreen
        }
    }
}

//extension SplashViewModel {
//    func signInView() -> some View {
//        SplashViewRouter.makeSignInView()
//    }
//}
