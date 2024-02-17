//
//  HomeViewModel.swift
//  RunningHill
//
//  Created by Tariq Patel on 2024/02/17.
//

import Foundation

final class HomeViewModel: ObservableObject {
    @Published var selectedList: [String] = Constants.Words.wordTypes
    @Published var selectedWord: String = ""
    @Published var instruction: String = "Select a word type"
    @Published var sentence: String = ""
    
    func selectWordList(_ wordType: String) {
        switch wordType {
        case "noun":
            selectedList = Constants.Words.nouns
        case "verb":
            selectedList = Constants.Words.verbs
        case "pronoun":
            selectedList = Constants.Words.pronouns
        case "preposition":
            selectedList = Constants.Words.prepositions
        case "exclamation":
            selectedList = Constants.Words.exclamations
        case "determine":
            selectedList = Constants.Words.determines
        case "conjunction":
            selectedList = Constants.Words.conjunctions
        case "adverb":
            selectedList = Constants.Words.adverbs
        case "adjective":
            selectedList = Constants.Words.adjectives
        default:
            selectedList = Constants.Words.wordTypes
        }
    }
    
    func selectWord(_ word: String) {
        if selectedList.contains("noun") {
            instruction = "Select a word to add to your sentence"
            selectWordList(word)
        } else {
            selectedWord = word
            selectedList = Constants.Words.wordTypes
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
