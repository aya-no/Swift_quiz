//
//  QuizBrain.swift
//  Swift_quiz
//
//  Created by user on 2023/06/13.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(text: "変数宣言は　var　で行う", answer: "true"),
        Question(text: "変数などに名前をつけるときは、スネークケースという命名規則を使う", answer: "false"),
        Question(text: "外部引数名を省略したい場合は、_（アンダースコア）を使う", answer: "true"),
        Question(text: "struct（構造体）を定義する際は、初期値を必ず与える必要がある", answer: "false"),
        Question(text: "swiftで利用できるWebフレームワークの一つは、Express である", answer: "true")
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
