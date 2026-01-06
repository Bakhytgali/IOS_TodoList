//
//  ItemModel.swift
//  TodoList
//
//  Created by Rakhat Bakhytgali on 06.01.2026.
//

import Foundation

// Immutable Struct
struct ItemModel: Identifiable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool = false) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: self.id, title: self.title, isCompleted: !self.isCompleted)
    }
}
