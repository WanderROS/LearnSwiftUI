//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Wander on 2021/10/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, world!")
//            .padding()
        NavigationView {
            List{
                Group{
                    Text("Hello").bold().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .blur(radius: 1,opaque: false)
                }
                Group{
                    Text("Swift UI")
                }
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
