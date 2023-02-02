//
//  ViewController.swift
//  QuizApp
//
//  Created by Bektemur on 02/02/23.
//

import UIKit


final class ViewController: UIViewController {

//MARK: - IB Outlets
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    
    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var thirdButton: UIButton!
    
    var quizbrain = QuizBrain()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        progressBar.progress = 0
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let buttons: [UIButton] = [firstButton!, secondButton!, thirdButton!]
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizbrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        for button in buttons {
            if button.currentTitle! == quizbrain.getAnswer() {
                button.backgroundColor = UIColor.green
            }
        }
        
        
        quizbrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.6, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = quizbrain.getQuestionText()
        progressBar.progress = quizbrain.getProgress()
        
        firstButton.setTitle(quizbrain.getAnswerOptions()[0], for: .normal)
        secondButton.setTitle(quizbrain.getAnswerOptions()[1], for: .normal)
        thirdButton.setTitle(quizbrain.getAnswerOptions()[2], for: .normal)
        
        firstButton.backgroundColor = UIColor.clear
        secondButton.backgroundColor = UIColor.clear
        thirdButton.backgroundColor = UIColor.clear
        
        scoreLabel.text = "Score: \(quizbrain.getScore())"
    }
}

