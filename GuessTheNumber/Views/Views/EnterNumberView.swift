//
//  EnterNumberView.swift
//  GuessTheNumber
//
//  Created by Pavel Yarovoi on 10.08.2022.
//

import UIKit

class EnterNumberView: UIView {
    
    // MARK: - Private properties
    lazy var guessTheNumberTextField = NumberTextField()
    lazy var enterTheNumberButton = GameButton(title: "Enter the Number")

    // MARK: - Ovveride methods
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
        
        addSubview(guessTheNumberTextField)
        addSubview(enterTheNumberButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            guessTheNumberTextField.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            guessTheNumberTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            guessTheNumberTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            guessTheNumberTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            guessTheNumberTextField.bottomAnchor.constraint(lessThanOrEqualTo: enterTheNumberButton.topAnchor),
                        
            enterTheNumberButton.heightAnchor.constraint(equalToConstant: 48),
            enterTheNumberButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            enterTheNumberButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            enterTheNumberButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            enterTheNumberButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50)
        ])
    }
}
