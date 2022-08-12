//
//  StartGameController.swift
//  GuessTheNumber
//
//  Created by Pavel Yarovoi on 10.08.2022.
//

import UIKit

class StartGameController: UIViewController {
    
    // MARK: - Private properties
    private lazy var startGameView = StartGameView()
    
    // MARK: - Override methods
    override func loadView() {
        super.loadView()
        
        self.view = startGameView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        startGameView.startNewGameButton.addTarget(self, action: #selector(startNewGameButtonPressed(_:)), for: .touchUpInside)
    }
    
    // MARK: - Navigation
    @objc private func startNewGameButtonPressed(_ sender: UIButton) {
        let viewController = EnterNumberController()
        viewController.modalPresentationStyle = .fullScreen
        
        present(viewController, animated: true)
    }
    
}
