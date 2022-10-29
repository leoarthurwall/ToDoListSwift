//
//  ListView.swift
//  ToDoListSwift
//
//  Created by Leo Wall on 28/10/22.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
       ItemModel(title: "this is the first title", isCompleted: false),
       ItemModel(title: "this is the second title", isCompleted: true),
       ItemModel(title: "this is the third", isCompleted: true),
       ItemModel(title: "this is the forth", isCompleted: false),
       ItemModel(title: "this is the fifth", isCompleted: false)
    ]
    
    var body: some View {
        List {
            ForEach( items) { item in
                ListRowView(item: item )
            }
            .onDelete(perform: deleteItem)
        }
        .listStyle(PlainListStyle())
            .navigationTitle("Todo List ✎")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    NavigationLink("Add", destination: AddView())
            )
        }
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets:    indexSet)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


