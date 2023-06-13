//
//  ViewController.swift
//  Swift_quiz
//
//  Created by user on 2023/06/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    let quiz = [
        Question(text: "第1問", answer: "true"),
        Question(text: "第2問", answer: "false"),
        Question(text: "第3問", answer: "true")
    ]
    
    var questionNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        updataUI()

    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualQuestion = quiz[questionNum]
        let actualAnswer = actualQuestion.answer
        
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
            print("正解")
        } else {
            sender.backgroundColor = UIColor.red
            print("ざんねん")
        }
        
        if questionNum < quiz.count - 1 {
            questionNum += 1
        } else {
            questionNum = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updataUI), userInfo: nil, repeats: false)

    }
    
    @objc func updataUI() {
        questionLabel.text = quiz[questionNum].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNum + 1) / Float(quiz.count)
    }
    
}

