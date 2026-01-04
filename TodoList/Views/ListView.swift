//
//  ListView.swift
//  TodoList
//
//  Created by Rakhat Bakhytgali on 04.01.2026.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "This is the first item",
        "This is the second item",
        "This is the third item",
        "This is the fourth item",
        "This is the fifth item"
    ]
    var body: some View {
        List {
            ForEach(items, id: \.self) { title in
                ListRowView(title: title)
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
