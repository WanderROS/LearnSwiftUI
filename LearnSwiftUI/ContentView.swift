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
        #if DEBUG
        VStack {
            MapView().frame(height:300)
                .edgesIgnoringSafeArea(.top)
            CircleImage().offset(y: -130)
                .padding(.bottom,-130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree Nation Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }.padding()
            Spacer()
        }
        #endif

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
