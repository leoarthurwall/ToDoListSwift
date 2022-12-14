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
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText )
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.secondarySystemBackground))
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
        .alert(isPresented: $showAlert, content: getAlert)
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
            showAlert.toggle()
            alertTitle = "Your task needs atleast 3 characters to be added 😁"
            return false
        }
        return true
    }
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                AddView()
            }
            .environmentObject(ListViewModel())
            NavigationView {
                AddView()
            }
            .environmentObject(ListViewModel())
        }
    }
}
