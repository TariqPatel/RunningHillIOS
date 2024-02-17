//
//  HomeView.swift
//  RunningHill
//
//  Created by Tariq Patel on 2024/02/17.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeViewModel = HomeViewModel()
    @State private var saveSentence = false
    @State private var wordAdded = false
    
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
            Text(homeViewModel.sentence)
            HStack{
                Button(action: {
                    if homeViewModel.selectedWord != "" {
                        homeViewModel.addWordToSentence()
                        wordAdded = true
                    }
                }) {
                    Text("ADD WORD")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                }.alert("Your word has been added.", isPresented: $wordAdded) {
                    Button("OK", role: .cancel) { }
                }
                Spacer()
                Button(action: {
                    if homeViewModel.sentence != "" {
                        homeViewModel.saveSentence()
                        saveSentence = true
                    }
                }) {
                    Text("SAVE SENTENCE")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                }.alert("Your sentence has been saved.", isPresented: $saveSentence) {
                    Button("OK", role: .cancel) { }
                }
            }.padding()
        }
        Spacer()
    }
}

#Preview {
    HomeView()
}
