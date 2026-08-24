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
