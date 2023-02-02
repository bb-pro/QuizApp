//
//  Question.swift
//  QuizApp
//
//  Created by Bektemur on 02/02/23.
//

import Foundation

struct Question {
    let text: String
    var answer: [String] = []
    let correct: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answer = a
        correct = correctAnswer
    }
}
