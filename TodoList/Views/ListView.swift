//
//  ListView.swift
//  TodoList
//
//  Created by Rakhat Bakhytgali on 04.01.2026.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "Wash my hair", isCompleted: true),
        ItemModel(title: "Eat breakfast"),
        ItemModel(title: "Dry my hair"),
        ItemModel(title: "Get ready for work"),
        ItemModel(title: "Go to work"),
    ]
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink {
                AddItemView()
            } label : {
                Text("Add")
            }
        )
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}
