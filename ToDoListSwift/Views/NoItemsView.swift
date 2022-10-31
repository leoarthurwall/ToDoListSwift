//
//  NoItemsView.swift
//  ToDoListSwift
//
//  Created by Leo Wall on 31/10/22.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("Your list is empty!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Need to do something? Get it off your mind by adding it to the list. Mark as complete, change it's priority or even delete the list item all together. The choice is yours.")
                NavigationLink(destination: AddView(), label: {
                    Text("Add Something")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .background(animate ? Color.accentColor: Color.red)
                        .cornerRadius(10)
                })
                .padding(.horizontal, animate ? 10 : 40)
                .scaleEffect( animate ? 1.1 : 1.0)
                .offset(y: animate ? -7 : 0)
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(width: .infinity, height: .infinity)
    }
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
            Animation
                .easeInOut(duration: 2.0)
                .repeatForever()
            )
                 {
                animate.toggle()
            }
        }
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
