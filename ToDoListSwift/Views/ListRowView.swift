//
//  ListRowView.swift
//  ToDoListSwift
//
//  Created by Leo Wall on 28/10/22.
//

import SwiftUI

struct ListRowView: View {
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text("First list item!")
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView()
    }
}
