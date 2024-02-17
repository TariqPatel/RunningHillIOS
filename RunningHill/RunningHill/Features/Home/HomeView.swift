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
            Text(homeViewModel.instruction)
        }
        
        Text("Selected Word: " + homeViewModel.selectedWord)
        
        VStack{
            List(homeViewModel.selectedList, id: \.self) { word in
                Button(word) {
                    homeViewModel.selectWord(word)
                }
            }
        }
        VStack{
            Text("sentence here")
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
