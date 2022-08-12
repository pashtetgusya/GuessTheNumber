//
//  EnterNumberController.swift
//  GuessTheNumber
//
//  Created by Pavel Yarovoi on 10.08.2022.
//

import UIKit

class EnterNumberController: UIViewController {

    // MARK: - Private properties
    private lazy var enterNumberView = EnterNumberView()
    
    // MARK: - Public properties
    var viewModel = GameViewModel()
    
    // MARK: - Override methods
    override func loadView() {
        super.loadView()
        
        self.view = enterNumberView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        enterNumberView.guessTheNumberTextField.delegate = self
        
        enterNumberView.enterTheNumberButton.isUserInteractionEnabled = false
        enterNumberView.enterTheNumberButton.backgroundColor = UIColor(red: 0, green: 0, blue: 255, alpha: 0.5)
        enterNumberView.enterTheNumberButton.addTarget(self, action: #selector(enterTheNumberButtonPressed(_:)), for: .touchUpInside)
    }
    
    // MARK: - @objc methods
    @objc private func enterTheNumberButtonPressed(_ sender: UIButton) {
        guard let inputValue = enterNumberView.guessTheNumberTextField.text else {
            return
        }
        
        if let number = Int(inputValue) {
            if number >= 1 && number <= 100 {
                viewModel.game.player.number = number
                startComputerGuessingNumber()
            } else {
                showErrorAlert()
            }
        } else {
            showErrorAlert()
        }
    }
    
    // MARK: - Navigation
    private func startComputerGuessingNumber() {
        let viewController = ComputerGuessesNumberController()
        viewController.viewModel = self.viewModel
        viewController.modalPresentationStyle = .fullScreen
        
        self.present(viewController, animated: true)
    }
    
    private func showErrorAlert() {
        let aletrController = getGameAlert(title: "Error", message: "Please enter a number from 1 to 100")
        
        present(aletrController, animated: true)
    }

}

// MARK: - Dismiss keyboard
extension EnterNumberController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

// MARK: - UITextFieldDelegate
extension EnterNumberController: UITextFieldDelegate {
  
    func textFieldDidEndEditing(_ textField: UITextField) {
        enterNumberView.enterTheNumberButton.isUserInteractionEnabled = true
        enterNumberView.enterTheNumberButton.backgroundColor = UIColor(red: 0, green: 0, blue: 255, alpha: 1)
    }

}
