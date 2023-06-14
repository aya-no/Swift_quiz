//
//  scoreViewController.swift
//  Swift_quiz
//
//  Created by user on 2023/06/14.
//

import UIKit

class scoreViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var score = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "\(score)問正解！"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toTopButton(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
