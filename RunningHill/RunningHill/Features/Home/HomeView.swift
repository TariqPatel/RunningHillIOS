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
        Text(homeViewModel.name)
    }
}

#Preview {
    HomeView()
}
