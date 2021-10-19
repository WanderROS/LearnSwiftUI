//
//  LandmarkRow.swift
//  LearnSwiftUI
//
//  Created by Wander on 2021/10/19.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark:Landmark
    var body: some View {
        HStack {
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[1])
                
            LandmarkRow(landmark: landmarkData[0])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
