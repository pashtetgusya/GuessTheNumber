//
//  ResultsGameView.swift
//  GuessTheNumber
//
//  Created by Pavel Yarovoi on 10.08.2022.
//

import UIKit

class ResultsGameView: UIView {

    // MARK: - Public properties
    lazy var scoresLabel = GameLabel(text: "Scores:")
    lazy var playerTriesCountLabel = GameLabel(text: "Your's tries count: ")
    lazy var computerTriesCountLabel = GameLabel(text: "Computer's tries count: ")
    lazy var winnerLabel = GameLabel(text: "Win ")
    lazy var goToMainMenuButton = GameButton(title: "Main menu")
    
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
        
        addSubview(scoresLabel)
        addSubview(playerTriesCountLabel)
        addSubview(computerTriesCountLabel)
        addSubview(winnerLabel)
        addSubview(goToMainMenuButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            scoresLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            scoresLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            scoresLabel.bottomAnchor.constraint(lessThanOrEqualTo: playerTriesCountLabel.topAnchor),
            
            playerTriesCountLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            playerTriesCountLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            playerTriesCountLabel.bottomAnchor.constraint(lessThanOrEqualTo: computerTriesCountLabel.topAnchor, constant: -20),
            
            computerTriesCountLabel.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            computerTriesCountLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            computerTriesCountLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            computerTriesCountLabel.bottomAnchor.constraint(lessThanOrEqualTo: winnerLabel.topAnchor),
            
            winnerLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            winnerLabel.bottomAnchor.constraint(lessThanOrEqualTo: goToMainMenuButton.topAnchor, constant: -50),
            
            goToMainMenuButton.heightAnchor.constraint(equalToConstant: 48),
            goToMainMenuButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            goToMainMenuButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            goToMainMenuButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            goToMainMenuButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50)
        ])
    }
    
}
