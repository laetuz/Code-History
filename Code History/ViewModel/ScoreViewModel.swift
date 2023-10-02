//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Ryo Martin on 02/10/23.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        correctGuesses * 100 / (correctGuesses + incorrectGuesses)
    }
}
