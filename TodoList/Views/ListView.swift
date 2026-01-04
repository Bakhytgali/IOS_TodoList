//
//  ListView.swift
//  TodoList
//
//  Created by Rakhat Bakhytgali on 04.01.2026.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            Text("Hi")
        }
        .navigationTitle("Todo List 📝")
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}
