//
//  CreationViewController.swift
//  newFlashcards
//
//  Created by Leann Abellanosa on 4/2/22.
//

import UIKit

class CreationViewController: UIViewController {
    
    var flashcardsController: ViewController!
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    
    var initialQuestion: String?
    var initialAnswer: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionTextField.text = initialQuestion
        answerTextField.text = initialAnswer
    }
    
    //Lab Two
    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func didTapOnDone(_ sender: Any) {
        let questionText = questionTextField.text
        let answerText = answerTextField.text
        
        let alert = UIAlertController(title: "Missing text", message: "You need to enter both a question and an answer.", preferredStyle: UIAlertController.Style .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        
        if questionText == nil || answerText == nil || questionText!.isEmpty || answerText!.isEmpty {
            present(alert, animated: true)
        } else {
            flashcardsController.updateFlashcard(question: questionText!, answer: answerText!)
        }
        dismiss(animated: true)
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
