//
//  ItemModel.swift
//  ToDoListSwift
//
//  Created by Leo Wall on 29/10/22.
//

import Foundation

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
}
