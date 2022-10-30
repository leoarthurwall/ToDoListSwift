//
//  ListViewModel.swift
//  ToDoListSwift
//
//  Created by Leo Wall on 29/10/22.
//

import Foundation

//when we create ListViewModel, it will immediately call the getItems function upon initiation and append the newitems to the items array


class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init(){
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "this is the first title", isCompleted: false),
            ItemModel(title: "this is the second title", isCompleted: true),
            ItemModel(title: "this is the third", isCompleted: true),
            ItemModel(title: "this is the forth", isCompleted: false),
            ItemModel(title: "this is the fifth", isCompleted: false),
            ItemModel(title: "this is the sixth", isCompleted: true)

        ]
        items.append(contentsOf: newItems)
    }
    //deleteItem and moveItem are referencing the items array var above
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to:Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
}
