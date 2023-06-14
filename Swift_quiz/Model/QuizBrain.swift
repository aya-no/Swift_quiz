//
//  QuizBrain.swift
//  Swift_quiz
//
//  Created by user on 2023/06/13.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(text: "第1問", answer: "true"),
        Question(text: "第2問", answer: "false"),
        Question(text: "第3問", answer: "true")
    ]
    
    var questionNum = 0
    var score = 0
    
    mutating func checkAnwer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNum].answer {
            score += 1
            return true
            
        } else {
           return false
        }
        
    }
    
    func getQuestionText() -> String {
        return quiz[questionNum].text
        
    }
    
    func getProgress() -> Float {
        return Float(questionNum) / Float(quiz.count)
        
    }
    
    func getScore() -> Int{
        return score
    }
}
