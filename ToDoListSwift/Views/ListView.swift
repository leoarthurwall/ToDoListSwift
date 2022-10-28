//
//  ListView.swift
//  ToDoListSwift
//
//  Created by Leo Wall on 28/10/22.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            Text("Hello, World!")
        }
        .navigationTitle("Todo List")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
