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
        VStack{
            List(homeViewModel.selectedList, id: \.self) { word in
                Button(word) {
                    homeViewModel.selectedWord = word
                }
            }
            Text(homeViewModel.selectedWord)
            Button("Verb") {
                homeViewModel.selectWordList("verb")
            }
            Button("Noun") {
                homeViewModel.selectWordList("noun")
            }
        }
    }
}

#Preview {
    HomeView()
}
