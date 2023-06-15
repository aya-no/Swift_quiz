//
//  ViewController.swift
//  Swift_quiz
//
//  Created by user on 2023/06/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var answerImage: UIImageView!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        progressBar.transform = CGAffineTransform(scaleX: 1.0, y: 5.0)
        updataUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnwer(userAnswer: userAnswer)
        
        
        if userGotItRight {
            answerImage.image = UIImage(named: "seikai")
            print("正解")
        } else {

            answerImage.image = UIImage(named: "zannen")
            print("ざんねん")
        }
        
        if quizBrain.questionNum < quizBrain.quiz.count - 1 {
            quizBrain.questionNum += 1
        } else {
            performSegue(withIdentifier: "toScoreVC", sender: nil)
        }
        print(quizBrain.score)
        
        progressBar.progress = quizBrain.getProgress()
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updataUI), userInfo: nil, repeats: false)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let scoreVC = segue.destination as! scoreViewController
        scoreVC.score = quizBrain.score
    }
    
    
    @objc func updataUI() {
        questionLabel.text = quizBrain.getQuestionText()
        scoreLabel.text = "スコア：\(quizBrain.getScore())"
        
        answerImage.image = UIImage()
        
    }
    
}

