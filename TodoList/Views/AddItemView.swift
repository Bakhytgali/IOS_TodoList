//
//  AddItemView.swift
//  TodoList
//
//  Created by Rakhat Bakhytgali on 04.01.2026.
//

import SwiftUI

struct AddItemView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: ListViewModel
    @State var textFieldValue: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Text something here...",
                          text: $textFieldValue)
                .padding(.horizontal )
                .frame(height: 55)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
                
                Button(action: saveButtonPressed, label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .font(.headline )
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add Todo ✏️")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed() {
        if textIsApproprite() {
            viewModel.saveButtonPressed(title: textFieldValue)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsApproprite() -> Bool {
        if textFieldValue.count < 5 {
            alertTitle = "Text must be at least 5 characters long 😬"
            showAlert.toggle()
            return false
        }
        
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationStack {
        AddItemView()
    }
    .environmentObject(ListViewModel())
}
