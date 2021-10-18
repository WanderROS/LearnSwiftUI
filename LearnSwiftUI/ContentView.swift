//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Wander on 2021/10/18.
//

import SwiftUI

struct ContentView: View {
    @State private var fruits = [
        "Apple",
        "Banana",
        "Papaya",
        "Mango"
    ]

    var body: some View {
        NavigationView{
            List {
                ForEach(
                    fruits,
                    id: \.self
                ) { fruit in
                    Text(fruit)
                }
                .onDelete { self.deleteFruit(at :$0) }
                .onMove { self.moveFruit(from: $0, to: $1) }
            }
            .navigationTitle("Fruits")
            .toolbar { EditButton() }
        }
    }
    func deleteFruit(at index :IndexSet){
        print(index.first)
        fruits.remove(at: index.first ?? 0 )
    }
    func moveFruit(from From:IndexSet,to To:Int){
        print(From)
        print(To)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
