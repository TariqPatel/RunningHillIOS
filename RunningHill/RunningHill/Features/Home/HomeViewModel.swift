//
//  HomeViewModel.swift
//  RunningHill
//
//  Created by Tariq Patel on 2024/02/17.
//

import Foundation

final class HomeViewModel: ObservableObject {
    @Published var selectedList: [String] = ["noun", "verb", "pronoun", "preposition", "exclamation", "determine", "conjunction", "adverb", "adjective"]
    @Published var selectedWord: String = ""
    @Published var instruction: String = "Select a word type"
    @Published var sentence: String = ""
    
    //TODO Add constants file to clean up code
    func selectWordList(_ wordType: String) {
        switch wordType {
        case "noun":
            selectedList = ["airplane", "box", "bread", "sheep", "pear", "crayons", "ladder"]
        case "verb":
            selectedList = ["agree", "concur", "attack", "snap", "shout", "strive", "plead"]
        case "pronoun":
            selectedList = ["I", "you", "he", "she", "it", "we", "they"]
        case "preposition":
            selectedList = ["above", "across", "against", "along", "around", "before"]
        case "exclamation":
            selectedList = ["ouch", "yuck", "ugh", "yikes", "shoot", "whoops", "rats"]
        case "determine":
            selectedList = ["learn", "determine", "certainty"]
        case "conjunction":
            selectedList = ["for", "and", "nor", "but", "or", "yet", "so"]
        case "adverb":
            selectedList = ["accordingly", "tomorrow", "then", "previously", "fast", "kindly"]
        case "adjective":
            selectedList = ["beautiful", "witty", "wicked", "confusing", "rich", "new"]
        default:
            selectedList = ["noun", "verb", "pronoun", "preposition", "exclamation", "determine", "conjunction", "adverb", "adjective"]
        }
    }
    
    func selectWord(_ word: String) {
        if selectedList.contains("noun") {
            instruction = "Select a word to add to your sentence"
            selectWordList(word)
        } else {
            selectedWord = word
            selectedList = ["noun", "verb", "pronoun", "preposition", "exclamation", "determine", "conjunction", "adverb", "adjective"]
            instruction = "Select a word type"
        }
    }
    
    func addWordToSentence() {
        if selectedWord != "" {
            sentence = sentence + " " + selectedWord
            selectedWord = ""
        }
    }
    
    func saveSentence() {
        if sentence != "" {
            let defaults = UserDefaults.standard
            var savedSentence = defaults.object(forKey:"SavedSentence") as? [String] ?? [String]()
            savedSentence.append(sentence)
            defaults.set(savedSentence, forKey: "SavedSentence")
        }
        sentence = ""
    }
    
    func getSentences() -> [String] {
        let defaults = UserDefaults.standard
        let savedSentence = defaults.object(forKey:"SavedSentence") as? [String] ?? [String]()
        return savedSentence
    }
    
}
