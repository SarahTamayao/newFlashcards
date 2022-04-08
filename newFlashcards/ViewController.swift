//
//  ViewController.swift
//  newFlashcards
//
//  Created by Leann Abellanosa on 4/2/22.
//

import UIKit

//Lab 3
struct Flashcard {
    var question: String
    var answer: String
}

class ViewController: UIViewController {
    
    //Lab One
    @IBOutlet weak var card: UIView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        card.layer.cornerRadius = 20.0
        card.layer.shadowRadius = 15.0
        card.layer.shadowColor = #colorLiteral(red: 0.7476357222, green: 0.9497290254, blue: 0.9032138586, alpha: 1)
        card.layer.shadowOpacity = 0.5
        
        questionLabel.layer.cornerRadius = 20.0
        answerLabel.layer.cornerRadius = 20.0
        
        questionLabel.clipsToBounds = true
        answerLabel.clipsToBounds = true
    }
    
    //Lab Two
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        let creationController = navigationController.topViewController as! CreationViewController
        creationController.flashcardsController = self
        
        if segue.identifier == "EditSegue" {
        creationController.initialQuestion = questionLabel.text
        creationController.initialAnswer = answerLabel.text
        }
    }

    @IBAction func didTapOnFlashcard(_ sender: Any) {
        if (self.questionLabel.isHidden == true) {
            self.questionLabel.isHidden = false;
        } else {
            self.questionLabel.isHidden = true
        }
    }
    
    func updateFlashcard(question: String, answer: String) {
        questionLabel.text = question
        answerLabel.text = answer
    }
}
