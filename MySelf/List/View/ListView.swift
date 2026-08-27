//
//  HomeView.swift
//  MySelf
//
//  Created by Solon Rios Soares on 30/07/26.
//

import SwiftUI
import Combine
import SwiftData

struct ListView: View {
    
    
    @ObservedObject var viewModel: ListViewModel
    
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
                    ForEach(viewModel.list) { item in
                        Button {
                            viewModel.toggle(item)
                        } label: {
                            HStack {
                                Image(systemName: item.completed ? "checkmark.circle.fill" : "circle")
                                    .foregroundStyle(item.completed ? .green : .secondary)

                                Text(item.name)
                                    .foregroundStyle(item.completed ? .secondary : .primary)
                                    .strikethrough(item.completed, color: .secondary)
                                    .lineLimit(2)
                            }
                        }
                        .buttonStyle(.plain)
                    }
                    .onDelete { indexSet in
                        viewModel.remove(atOffsets: indexSet)
                    }
                }
                
            }
            
        }
        
    }
}

#Preview {
    ListView(viewModel: ListViewModel())
}
