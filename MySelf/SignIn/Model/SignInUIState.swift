//
//  SignInUIState.swift
//  MySelf
//
//  Created by Solon Rios Soares on 27/07/26.
//

import Foundation

enum SignInUIState: Hashable {
    case none
    case loading
    case goToHomeScreen
    case goToSignUpScreen
    case error(String)
}
