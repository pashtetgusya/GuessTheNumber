//
//  NumberTextField.swift
//  GuessTheNumber
//
//  Created by Pavel Yarovoi on 10.08.2022.
//

import UIKit

final class NumberTextField: UITextField {
    
    // MARK: - Override methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    // MARK: - Required methods
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        placeholder = "Guess the number"
        textAlignment = .center
        backgroundColor = .white
        
        borderStyle = .roundedRect
        layer.cornerRadius = 20
        
        keyboardType = .numberPad
        returnKeyType = .done
    }
    
}
