//
//  CategoryHome.swift
//  LearnSwiftUI
//
//  Created by Wander on 2021/10/20.
//

import SwiftUI

struct CategoryHome: View {
    
    var categories: [String: [Landmark]]{
        Dictionary(grouping: landmarkData, by: {$0.category.rawValue})
    }
    
    var featured: [Landmark]{
        landmarkData.filter{
            $0.isFeatured
        }
    }
    
    var body: some View {
        NavigationView{
            List{
                FeaturedLandmarks(landmarks: featured)
                    .scaledToFill()
                    .frame(height:200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                ForEach(categories.keys.sorted(),id:\.self){
                    key in
                    CategoryRow(categoryName: key,item:self.categories[key]!)
                }.listRowInsets(EdgeInsets())
            }
                .navigationBarTitle("Featured")
        }
        
    }
}

struct FeaturedLandmarks: View{
    var landmarks: [Landmark]
    var body: some View{
        landmarks[0].image.resizable()
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
