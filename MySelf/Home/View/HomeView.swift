//
//  HomeView.swift
//  MySelf
//
//  Created by Solon Rios Soares on 24/08/26.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink("github", value: HomeUIState.github)
            }
            .navigationTitle("Home")
            .navigationDestination(for: HomeUIState.self) { page in
                switch page {
                case .github:
                    GithubProfileView(viewModel: GithubProfileViewModel())
                }
            }
        }
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
