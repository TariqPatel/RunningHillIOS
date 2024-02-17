//
//  HomeView.swift
//  RunningHill
//
//  Created by Tariq Patel on 2024/02/17.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeViewModel = HomeViewModel()
    
    var body: some View {
        List(homeViewModel.adverbs, id: \.self) { word in
            Button(word) {
                print("Button tapped!")
            }
        }
    }
}

#Preview {
    HomeView()
}
