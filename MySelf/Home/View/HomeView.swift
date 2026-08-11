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
    
    var list: [String] = ["abacaxi", "banana", "caju", "coco", "dendê"]
    
    var body: some View {
        VStack {
            HStack {
                EditTextView(text: self.$viewModel.newItem,
                              placeholder: "Add new item")
            }
            List {
                Section("") {
                    ForEach(list, id: \.self) { ListItem in
                        Text(ListItem)
                    }
                }
            }
        }
        
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
