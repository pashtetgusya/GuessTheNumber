//
//  ResultsGameController.swift
//  GuessTheNumber
//
//  Created by Pavel Yarovoi on 10.08.2022.
//

import UIKit

class ResultsGameController: UIViewController {
    
    // MARK: - Private properties
    private lazy var resultGameView = ResultsGameView()
    
    // MARK: - Public properties
    var viewModel: GameViewModel!
    
    // MARK: - Override methods
    override func loadView() {
        super.loadView()
        
        self.view = resultGameView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        whoIsWinner()
        
        resultGameView.goToMainMenuButton.addTarget(
            self, action: #selector(goToMainMenuButtonPressed(_:)), for: .touchUpInside)
    }
    
    // MARK: - Private methods
    private func whoIsWinner() {
        let playerTriesConut = viewModel.game.player.triesCount
        let computerTriesCount = viewModel.game.computer.triesCount
        var winner = ""
        
        if playerTriesConut < computerTriesCount {
            winner = "You win"
        } else if computerTriesCount < playerTriesConut {
            winner = "Computer win"
        } else if playerTriesConut == computerTriesCount {
            winner = "Dead heat"
        }
        
        resultGameView.playerTriesCountLabel.text = "Your's tries count: \(playerTriesConut)"
        resultGameView.computerTriesCountLabel.text = "Computer's tries count: \(computerTriesCount)"
        resultGameView.winnerLabel.text = winner
    }
    
    // MARK: - @objc methods
    @objc private func goToMainMenuButtonPressed(_ sender: UIButton) {
        goToMainMenu()
    }
    
    // MARK: - Navigation
    private func goToMainMenu() {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    
}
