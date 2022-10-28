//
//  ListView.swift
//  ToDoListSwift
//
//  Created by Leo Wall on 28/10/22.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "this is the first title",
        "this is the second title",
        "this is the third title",
        "this is the forth item"
    ]
    
    var body: some View {
        List {
            ForEach( items, id: \.self) { item in
                ListRowView(title: item )
            }
        }
        .listStyle(PlainListStyle())
            .navigationTitle("✎ Todo List")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    NavigationLink("Add", destination: Text("Destination"))
            )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


