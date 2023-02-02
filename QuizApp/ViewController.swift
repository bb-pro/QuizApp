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
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
    }
    

    
}

