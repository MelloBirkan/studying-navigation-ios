//
//  ContentView.swift
//  LigayaStore-using-navigation
//
//  Created by Marcello Gonzatto Birkan on 13/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Items in Stock")
                    .font(.title)
                    .padding()
                Spacer()
                    NavigationLink(
                        destination: ItemDetailView(itemName: "Shrimp Chips"),
                        label: {
                            Text("Shrimp Chips")
                })
                    .padding()
                NavigationLink(
                    destination: ItemDetailView(itemName: "Potato Chips"),
                    label: {
                        Text("Potato Chips")
            })
                Spacer()
            }
            .navigationTitle(Text("Ligaya Store"))
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
