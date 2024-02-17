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
    @Published var wordTypeList: [String] = ["noun", "verb", "pronoun", "preposition", "exclamation", "determine", "conjunction", "adverb", "adjective"]
    @Published var selectedList: [String] = ["noun", "verb", "pronoun", "preposition", "exclamation", "determine", "conjunction", "adverb", "adjective"]
    @Published var selectedWord: String = ""
    
    func selectWordList(_ wordType: String) {
        switch wordType {
        case "noun":
            selectedList = ["airplane", "box", "bread", "sheep", "pear", "crayons", "ladder"]
        case "verb":
            selectedList = ["agree", "concur", "attack", "snap", "shout", "strive", "plead"]
        case "pronoun":
            selectedList = ["I", "you", "he", "she", "it", "we", "they"]
        default:
            selectedList = ["noun", "verb", "pronoun", "preposition", "exclamation", "determine", "conjunction", "adverb", "adjective"]
        }
    }
    
}
