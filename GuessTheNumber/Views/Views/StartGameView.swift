//
//  StartGameView.swift
//  GuessTheNumber
//
//  Created by Pavel Yarovoi on 10.08.2022.
//

import UIKit

class StartGameView: UIView {
    
    // MARK: - Private properties
    private lazy var gameTitleLabel = GameLabel(text: "My Awesome Game")
    
    // MARK: - Public properties
    var startNewGameButton = GameButton(title: "Start New Game")

    // MARK: - Override methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setupConstraints()
    }
    
    // MARK: - Required methods
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods
    private func setupView() {
        backgroundColor = .systemBackground
        
        addSubview(gameTitleLabel)
        addSubview(startNewGameButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            gameTitleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            gameTitleLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            
            startNewGameButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50),
            startNewGameButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            startNewGameButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            startNewGameButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            startNewGameButton.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
    
}
