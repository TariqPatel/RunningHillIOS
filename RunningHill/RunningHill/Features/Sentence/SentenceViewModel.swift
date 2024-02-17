//
//  SentenceViewModel.swift
//  RunningHill
//
//  Created by Tariq Patel on 2024/02/17.
//

import Foundation

final class SentenceViewModel: ObservableObject {
    @Published var sentences: [String] = []
    
    init(sentences: [String] = []) {
        self.sentences = sentences
    }
    
}
