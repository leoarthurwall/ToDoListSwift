//
//  ItemModel.swift
//  ToDoListSwift
//
//  Created by Leo Wall on 29/10/22.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted : Bool
}
