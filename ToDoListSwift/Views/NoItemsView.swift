//
//  NoItemsView.swift
//  ToDoListSwift
//
//  Created by Leo Wall on 31/10/22.
//

import SwiftUI

struct NoItemsView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("No items on your list!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Need to do something? Get it off your mind by adding it to the list. Mark as complete, change it's priority or even delete the list item all together. The choice is yours.")

            }
        }
        .frame(width: .infinity, height: .infinity)
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NoItemsView()
                .navigationTitle("Title")
        }
    }
}
