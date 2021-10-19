//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Wander on 2021/10/18.
//

import SwiftUI

struct ContentView: View {
    var landmark:Landmark
    var body: some View {
        #if DEBUG
        VStack {
            MapView(coordinate: landmark.locationCoordinate).frame(height:300)
                .edgesIgnoringSafeArea(.top)
            CircleImage(image:landmark.image).offset(y: -130)
                .padding(.bottom,-130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }.padding()
            Spacer()
        }
        #endif

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarkData[0])
    }
}
