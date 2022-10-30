//
//  ItemModel.swift
//  ToDoListSwift
//
//  Created by Leo Wall on 29/10/22.
//

import Foundation

//Immutable Struct

struct ItemModel: Identifiable {
    let id: String
    let title: String
    let isCompleted : Bool
    
    // customise item model so it doesn't create a new UUID when it's clicked (to change completion status)
    //with 'id: String = UUID().uuidString' as a parameter, we can initialise an ItemModel with an id if we give it a string, or without an id, and it will be automativally given one
    init(id: String = UUID().uuidString, title:String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    //UPDATES ItemModel - uses same id & title and toggled isCompleted status
    func updateCompleted() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}



/*
 Now have 2 different ItemModels:
 1 - automatically creates ID, used for adding item
 ItemModel(title: <#T##String#>, isCompleted: <#T##Bool#>)
 
 2 - already have an id, is used for updating items
 ItemModel(id: <#T##String#>, title: <#T##String#>, isCompleted: <#T##Bool#>)
 */

