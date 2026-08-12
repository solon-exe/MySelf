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
        VStack {
            Text("List")
                .font(Font.largeTitle.bold())
            HStack {
                EditTextView(text: self.$viewModel.newItem,
                              placeholder: "ex: banana")
                
                Button {
                    self.viewModel.addItem()
                } label: {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                        Text("Add item")
                    }
                    
                }
                .padding(.bottom, 10)
                .buttonStyle(.borderedProminent)
                .disabled(viewModel.newItem.isEmpty)

            }
            .padding(.horizontal)
            List {
                Section("") {
                    ForEach(viewModel.list) { Item in
                        Text(Item.name)
                    }
                }
            }
        }
        
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
