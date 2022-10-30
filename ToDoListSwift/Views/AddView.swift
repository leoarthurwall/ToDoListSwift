//
//  AddView.swift
//  ToDoListSwift
//
//  Created by Leo Wall on 28/10/22.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText )
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.lightGray).opacity(0.15))
                .cornerRadius(10)
                
                Button(action: saveButtonPresssed, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
                
        }
        .navigationTitle("Add an Item ✚")
    }
    func saveButtonPresssed () {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            //tells presentation mode to go back to prev page once button is actioned
            presentationMode.wrappedValue.dismiss()
        }
    }
    func textIsAppropriate () -> Bool {
        if textFieldText.count < 3 {
            return false
        }
        return true
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
