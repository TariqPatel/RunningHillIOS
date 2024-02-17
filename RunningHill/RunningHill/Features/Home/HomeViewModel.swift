//
//  HomeViewModel.swift
//  RunningHill
//
//  Created by Tariq Patel on 2024/02/17.
//

import Foundation

final class HomeViewModel: ObservableObject {
    @Published var nouns: [String] = ["airplane", "box", "bread", "sheep", "pear", "crayons", "ladder", "leaf", "ghost", "bridge"]
    
    @Published var verbs: [String] = ["agree", "concur", "attack", "snap", "shout", "strive", "plead", "inquire", "request", "bloom"]
    
    @Published var pronouns: [String] = ["I", "you", "he", "she", "it", "we", "they"]
    
    @Published var prepositions: [String] = ["above", "across", "against", "along", "around", "before", "down", "under", "beneath", "off"]
    
    @Published var exclamations: [String] = ["ouch", "yuck", "ugh", "yikes", "shoot", "whoops", "rats", "gosh", "congratulations", "cheers"]
    
    @Published var determines: [String] = ["learn", "determine", "certainty"]
    
    @Published var conjunctions: [String] = ["for", "and", "nor", "but", "or", "yet", "so"]
    
    @Published var adverbs: [String] = ["accordingly", "tomorrow", "then", "previously", "fast", "kindly", "eagerly", "foolishly", "cheerfully", "somewhat"]
    
    @Published var adjective: [String] = ["beautiful", "witty", "wicked", "confusing", "rich", "new", "strange", "rocky"]
    
}
