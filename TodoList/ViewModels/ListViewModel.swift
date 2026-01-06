//
//  ListViewModel.swift
//  TodoList
//
//  Created by Rakhat Bakhytgali on 06.01.2026.
//

import Foundation
import Combine
import SwiftUI

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init() {
        getItem()
    }
    
    private func getItem() {
        let newItems = [
            ItemModel(title: "Wash my hair", isCompleted: true),
            ItemModel(title: "Eat breakfast"),
            ItemModel(title: "Dry my hair"),
            ItemModel(title: "Get ready for work"),
            ItemModel(title: "Go to work"),
        ]
        
        self.items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func saveButtonPressed(title: String) {
        let newItem = ItemModel(title: title)
        self.items.append(newItem)
    }
}
