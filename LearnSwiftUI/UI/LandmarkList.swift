//
//  LandmarkList.swift
//  LearnSwiftUI
//
//  Created by Wander on 2021/10/19.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarkData){ landmark in
                NavigationLink(destination: ContentView(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
                
               
            }.navigationBarTitle(Text("Landmarks"))
        }
      
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
