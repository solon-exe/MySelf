//
//  HomeView.swift
//  MySelf
//
//  Created by Solon Rios Soares on 30/07/26.
//

import SwiftUI
import Combine

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        Text("Home")
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
