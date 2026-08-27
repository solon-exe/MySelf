//
//  HomeModel.swift
//  MySelf
//
//  Created by Solon Rios Soares on 04/08/26.
//
import Foundation
import Combine

struct Items: Identifiable {
    var id: UUID = UUID()
    var name: String
    var completed: Bool = false
}
