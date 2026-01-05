//
//  ItemModel.swift
//  TodoList
//
//  Created by Rakhat Bakhytgali on 06.01.2026.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(title: String, isCompleted: Bool = false) {
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = isCompleted
    }
}
