//
//  Question.swift
//  Code History
//
//  Created by Ryo Martin on 24/09/23.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(
            questionText: "Who invented the World Wide Web?",
            possibleAnswers: [
                "Steve Jobs",
                "Linus Torvalds",
                "Bill Gates",
                "Tim Berners-Lee"
            ],
            correctAnswerIndex: 3
        ),
        Question(
            questionText: "What was the first Object-Oriented Programming language?",
            possibleAnswers: [
                "Simula",
                "Python",
                "Kotlin",
                "C"
            ],
            correctAnswerIndex: 0
        )
    ]
}
