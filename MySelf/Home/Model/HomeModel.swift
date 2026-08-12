//
//  HomeModel.swift
//  MySelf
//
//  Created by Solon Rios Soares on 04/08/26.
//
 import Foundation

class Items: Identifiable {
    var id: UUID = UUID()
    var name: String
    var completed: Bool
    
    init(name: String, completed: Bool = false) {
        self.name = name
        self.completed = completed
    }
}
