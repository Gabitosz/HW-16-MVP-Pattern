//
//  ViewController.swift
//  HW-16-MVP-Pattern
//
//  Created by Gabriel Zdravkovici on 18.10.2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Outlets
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Архитектурный паттерн MVP"
        label.font = .boldSystemFont(ofSize: 26)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var modelButton: UIButton = {
        let modelButton = UIButton(type: .system)
        modelButton.setTitle("Model", for: .normal)
        modelButton.backgroundColor = .init(red: 214 / 255, green: 232 / 255, blue: 213 / 255, alpha: 1)
        modelButton.layer.cornerRadius = 15
        modelButton.translatesAutoresizingMaskIntoConstraints = false
        return modelButton
        
    }()
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
        
    }
    
    // MARK: Setup
    
    private func setupView() {
        view.backgroundColor = .systemBackground
    }
    
    private func setupHierarchy() {
        let views = [titleLabel, modelButton]
        views.forEach { view.addSubview($0) }
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            modelButton.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 100),
            modelButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            modelButton.widthAnchor.constraint(equalToConstant: 120),
            modelButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }

}

