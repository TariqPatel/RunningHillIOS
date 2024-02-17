//
//  HomeViewModel.swift
//  RunningHill
//
//  Created by Tariq Patel on 2024/02/17.
//

import Foundation

final class HomeViewModel: ObservableObject {
    @Published var nouns: [String] = ["airplane", "box", "bread", "sheep", "pear", "crayons", "ladder"]
    
    @Published var verbs: [String] = ["agree", "concur", "attack", "snap", "shout", "strive", "plead"]
    
    @Published var pronouns: [String] = ["I", "you", "he", "she", "it", "we", "they"]
    
    @Published var prepositions: [String] = ["above", "across", "against", "along", "around", "before"]
    
    @Published var exclamations: [String] = ["ouch", "yuck", "ugh", "yikes", "shoot", "whoops", "rats"]
    
    @Published var determines: [String] = ["learn", "determine", "certainty"]
    
    @Published var conjunctions: [String] = ["for", "and", "nor", "but", "or", "yet", "so"]
    
    @Published var adverbs: [String] = ["accordingly", "tomorrow", "then", "previously", "fast", "kindly"]
    
    @Published var adjective: [String] = ["beautiful", "witty", "wicked", "confusing", "rich", "new"]
    
}
