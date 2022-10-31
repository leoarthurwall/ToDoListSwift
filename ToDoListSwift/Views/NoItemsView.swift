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
                Text("Currently no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                

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
