//
//  ToDoListSwiftApp.swift
//  ToDoListSwift
//
//  Created by Leo Wall on 26/10/22.
//

import SwiftUI

@main
struct ToDoListSwiftApp: App {
    
    // created a state object for the list view model so it can be access across the app
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            //Navigation view here will display it across the whole app
            NavigationView {
                ListView()

            }
        }
    }
}
