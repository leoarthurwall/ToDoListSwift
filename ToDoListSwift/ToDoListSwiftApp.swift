//
//  ToDoListSwiftApp.swift
//  ToDoListSwift
//
//  Created by Leo Wall on 26/10/22.
//

import SwiftUI

@main
struct ToDoListSwiftApp: App {
    var body: some Scene {
        WindowGroup {
            //Navigation view here will display it across the whole app
            NavigationView {
                ListView()

            }
        }
    }
}
