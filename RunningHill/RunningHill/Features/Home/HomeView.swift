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
        VStack {
            Text("Add words to make your sentence")
            Text(homeViewModel.selectedWord)
        }
        
        Text("sentence here")
        
        VStack{
            List(homeViewModel.selectedList, id: \.self) { word in
                Button(word) {
                    homeViewModel.selectedWord = word
                }
            }
        }
        VStack{
            HStack{
                Button(action: {
                    print("Button tapped!")
                }) {
                    Text("ADD WORD")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                }
                Spacer()
                Button(action: {
                    print("Button tapped!")
                }) {
                    Text("SAVE SENTENCE")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                }
            }.padding()
        }
        Spacer()
    }
}

#Preview {
    HomeView()
}
