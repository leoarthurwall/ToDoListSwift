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
        "this is the third title"
    ]
    
    var body: some View {
        List {
            ListRowView(title: "this is the first title")
        }
            .navigationTitle("✎ Todo List")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


