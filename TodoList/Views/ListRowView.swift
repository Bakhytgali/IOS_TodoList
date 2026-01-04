//
//  ListRowView.swift
//  TodoList
//
//  Created by Rakhat Bakhytgali on 04.01.2026.
//

import SwiftUI

struct ListRowView: View {
    let title: String
    
    var body: some View {
        HStack{
           Image(systemName: "checkmark.circle")
           Text("This is the first item")
           Spacer()
       }
    }
}

#Preview {
    ListRowView(title: "This is the first item")
}
