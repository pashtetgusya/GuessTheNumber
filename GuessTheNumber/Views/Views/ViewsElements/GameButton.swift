//
//  GameCustomButton.swift
//  GuessTheNumber
//
//  Created by Pavel Yarovoi on 10.08.2022.
//

import UIKit

final class GameButton: UIButton {
        
    // MARK: - Override methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure(title: nil)
    }
    
    // MARK: - Required methods
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required init(title: String?) {
        super.init(frame: .zero)
        
        configure(title: title)
    }
    
    // MARK: - Private methods
    private func configure(title: String?) {
        translatesAutoresizingMaskIntoConstraints = false
        
        configuration?.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10)
        
        setTitle(title ?? "", for: .normal)
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        titleLabel?.numberOfLines = 1

        backgroundColor = UIColor(red: 0, green: 0, blue: 255, alpha: 1)
        layer.cornerRadius = 15
    }

}
