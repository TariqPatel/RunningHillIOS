//
//  SentenceView.swift
//  RunningHill
//
//  Created by Tariq Patel on 2024/02/17.
//

import SwiftUI

struct SentenceView: View {
    
    @StateObject var sentenceViewModel = SentenceViewModel()
    
    var body: some View {
        Text("These are your saved sentences")
        List(sentenceViewModel.sentences, id: \.self) { sentence in
            Text(sentence)
        }
    }
}

#Preview {
    SentenceView()
}
