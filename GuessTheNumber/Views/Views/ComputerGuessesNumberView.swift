//
//  ComputerGuessesNumberView.swift
//  GuessTheNumber
//
//  Created by Pavel Yarovoi on 10.08.2022.
//

import UIKit

class ComputerGuessesNumberView: UIView {
    
    // MARK: - Public properties
    lazy var numberOfGuessesLabel = GameLabel(text: "Try №")
    lazy var computerGuessesLabel = GameLabel(text: "Computer is guessing")
    lazy var guessesLabel = GameLabel(text: "Your number is – ")
    lazy var numberIsLabel = GameLabel(text: "My number is ..")
    
    lazy var greaterthanButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .black
        button.backgroundColor = .white
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        button.layer.borderColor = UIColor.black.cgColor
        button.setImage(UIImage(systemName: "greaterthan"), for: .normal)
        
        return button
    }()

    lazy var equalButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .black
        button.backgroundColor = .white
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        button.layer.borderColor = UIColor.black.cgColor
        button.setImage(UIImage(systemName: "equal"), for: .normal)
        
        return button
    }()

    lazy var lessButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .black
        button.backgroundColor = .white
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        button.layer.borderColor = UIColor.black.cgColor
        button.setImage(UIImage(systemName: "lessthan"), for: .normal)
        
        return button
    }()
    
    // MARK: - Private properties
    private lazy var buttonsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        stackView.addArrangedSubview(greaterthanButton)
        stackView.addArrangedSubview(equalButton)
        stackView.addArrangedSubview(lessButton)
        
        return stackView
    }()
    
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
        
        addSubview(numberOfGuessesLabel)
        addSubview(computerGuessesLabel)
        addSubview(guessesLabel)
        addSubview(numberIsLabel)
        addSubview(buttonsStackView)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            numberOfGuessesLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            numberOfGuessesLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            
            computerGuessesLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            computerGuessesLabel.topAnchor.constraint(equalTo: numberOfGuessesLabel.bottomAnchor, constant: 10),
            
            guessesLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            guessesLabel.topAnchor.constraint(equalTo: computerGuessesLabel.bottomAnchor, constant: 80),
            
            numberIsLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            numberIsLabel.widthAnchor.constraint(equalTo: buttonsStackView.widthAnchor),
            numberIsLabel.bottomAnchor.constraint(equalTo: buttonsStackView.topAnchor, constant: -10),
            
            buttonsStackView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            buttonsStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -50),
            
            greaterthanButton.heightAnchor.constraint(equalToConstant: 50),
            greaterthanButton.widthAnchor.constraint(equalToConstant: 50),
            
            equalButton.heightAnchor.constraint(equalToConstant: 50),
            equalButton.widthAnchor.constraint(equalToConstant: 50),

            lessButton.heightAnchor.constraint(equalToConstant: 50),
            lessButton.widthAnchor.constraint(equalToConstant: 50)
        ])
    }
    
}
