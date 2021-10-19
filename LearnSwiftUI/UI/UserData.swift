//
//  UserData.swift
//  LearnSwiftUI
//
//  Created by Wander on 2021/10/19.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
