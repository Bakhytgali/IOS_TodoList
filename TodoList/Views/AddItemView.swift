//
//  AddItemView.swift
//  TodoList
//
//  Created by Rakhat Bakhytgali on 04.01.2026.
//

import SwiftUI

struct AddItemView: View {
    @State var textFieldValue: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Text something here...",
                          text: $textFieldValue)
                .padding(.horizontal )
                .frame(height: 55)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10 )
                
                Button(action: {
                    
                }, label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .font(.headline )
                        .frame(height: 50 )
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10 )
                })
            }
            .padding(14 )
        }
        .navigationTitle("Add Todo ✏️")
    }
}

#Preview {
    NavigationStack {
        AddItemView()
    }
}
