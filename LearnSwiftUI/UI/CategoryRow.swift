//
//  CategoryRow.swift
//  LearnSwiftUI
//
//  Created by Wander on 2021/10/20.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName: String
    var item: [Landmark]
    
    var body: some View {
        VStack(alignment:.leading) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading,15)
                .padding(.bottom,35)
                .padding(.top,30)
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(self.item){
                        landmark in
                        NavigationLink(destination:ContentView(landmark: landmark)){
                            CategoryItem(landmark: landmark)
                        }
                        
                    }
                    
                }
            }.frame(height:105)

        }
    }
}

struct CategoryItem: View{
    var landmark: Landmark
    var body: some View{
        VStack{
            landmark.image.resizable()
                .renderingMode(.original)
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading,15)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(categoryName: landmarkData[0].category.rawValue, item: Array(landmarkData.prefix(4)))
    }
}
