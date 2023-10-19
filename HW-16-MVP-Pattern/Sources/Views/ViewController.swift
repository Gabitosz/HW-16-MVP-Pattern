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
        label.textColor = .black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        let views = [titleLabel]
        views.forEach { view.addSubview($0) }
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

}

