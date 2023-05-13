//
//  ItemDetailView.swift
//  LigayaStore-using-navigation
//
//  Created by Marcello Gonzatto Birkan on 13/05/23.
//

import SwiftUI

struct ItemDetailView: View {
    let itemName: String
    @State var quantityRemaining = Int.random(in: 1...14)
    
    var body: some View {
        VStack{
            Text("\(itemName)")
                .font(.title)
                .padding()
            Spacer()
            Image(systemName: "photo")
                .font(.system(size: 200))
                .padding()
            Text("Quantity remaining: \(quantityRemaining)")
            Spacer()
            Button {
                print("Button tapped")
                if quantityRemaining > 0 {
                    quantityRemaining -= 1
                }
            } label: {
                Text("Add one to your cart")
            }
            Spacer()
        }
        .background(
              // The navigation link is not active until the quantity is 0
              NavigationLink(destination: Text("You bought all the \(itemName)!"),
                             isActive: .constant(quantityRemaining == 0),
                             label: { EmptyView() })
        )
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(itemName: "Test Item")
    }
}
