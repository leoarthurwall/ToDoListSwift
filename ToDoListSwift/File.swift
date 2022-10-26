//
//  File.swift
//  ToDoListSwift
//
//  Created by Leo Wall on 26/10/22.
//

import Foundation
import SwiftUI
import Combine

// Identifiable - A class of types whose instances hold the value of an entity with stable identity.
struct Task : Identifiable {
    var id = String()
    var todoItem = String()
}
