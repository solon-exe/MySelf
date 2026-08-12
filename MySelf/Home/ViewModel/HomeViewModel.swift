//
//  HomeViewModel.swift
//  MySelf
//
//  Created by Solon Rios Soares on 30/07/26.
//
import SwiftUI
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var newItem: String = ""
    
    @Published var list: [Items] = []
    
}

extension HomeViewModel {
    func addItem() {
        list.append(Items(name: newItem))
        newItem = ""
    }
}
