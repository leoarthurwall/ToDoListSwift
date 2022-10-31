//
//  ListViewModel.swift
//  ToDoListSwift
//
//  Created by Leo Wall on 29/10/22.
//

import Foundation

//when we create ListViewModel, it will immediately call the getItems function upon initiation and append the newitems to the items array


class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = [] {
        // computed property - swift function (didSet) get called any time the items array gets changed (like, useEffect)
        didSet {
            saveItems()
        }
    }
    let itemsKey = "items_list"
    
    init(){
        getItems()
    }
    
    func getItems() {
//        let newItems = [
//            ItemModel(title: "this is the first title", isCompleted: false),
//            ItemModel(title: "this is the second title", isCompleted: true),
//            ItemModel(title: "this is the third", isCompleted: true),
//            ItemModel(title: "this is the forth", isCompleted: false),
//            ItemModel(title: "this is the fifth", isCompleted: false),
//            ItemModel(title: "this is the sixth", isCompleted: true),
//            ItemModel(title: "this is the seventh", isCompleted: false),
        //            ItemModel(title: "this is the eights", isCompleted: false)

//
//
//        ]
//        items.append(contentsOf: newItems)
        // trys to get data from itemsKey (if exists)
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
        // decodes data from JSON format back to ItemsModel array.
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
        
        self.items = savedItems
        
    }
    //deleteItem and moveItem are referencing the items array var above
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to:Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    // finds the index of the item within the array. matching the clicked item's id to it's array id.
    // toggles the item's completion status
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id}) {
            items[index] = item.updateCompletion()
        }
    }
    
    // function to persist list items
    // encodes the items in the items array into JSON data and puts it into the UserDefaults.
    // the for key is needed when we what to decode the data back again. It is set as a variable outside of the function.
    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
    
}
