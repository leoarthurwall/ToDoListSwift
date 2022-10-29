//
//  ListRowView.swift
//  ToDoListSwift
//
//  Created by Leo Wall on 28/10/22.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(item.title)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "first Item", isCompleted: true)
    static var item2 = ItemModel(title: "second Item", isCompleted: false)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
