//
//  HomeViewModel.swift
//  MySelf
//
//  Created by Solon Rios Soares on 30/07/26.
//
import SwiftUI
import Combine

class ListViewModel: ObservableObject {
    
    @Published var newItem: String = ""
    
    @Published var list: [Items] = []
    
}

extension ListViewModel {
    func addItem() {
        list.append(Items(name: newItem))
        newItem = ""
    }
}

extension ListViewModel {
    func toggle(_ item: Items) {
        if let index = list.firstIndex(where: { $0.id == item.id }) {
            self.list[index].completed.toggle()
        }
    }
    
    func remove(atOffsets offsets: IndexSet) {
        list.remove(atOffsets: offsets)
    }
}

extension ListViewModel {
    
}
