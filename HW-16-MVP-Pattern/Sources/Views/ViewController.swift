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
    
    private lazy var viewButton: UIButton = {
        let viewButton = UIButton(type: .system)
        viewButton.setTitle("View", for: .normal)
        viewButton.backgroundColor = .init(red: 255 / 255, green: 240 / 255, blue: 206 / 255, alpha: 1)
        viewButton.layer.cornerRadius = 15
        viewButton.translatesAutoresizingMaskIntoConstraints = false
        return viewButton
        
    }()
    
    private lazy var presenterButton: UIButton = {
        let presenterButton = UIButton(type: .system)
        presenterButton.setTitle("Presenter", for: .normal)
        presenterButton.backgroundColor = .init(red: 225 / 255, green: 213 / 255, blue: 230 / 255, alpha: 1)
        presenterButton.layer.cornerRadius = 15
        presenterButton.translatesAutoresizingMaskIntoConstraints = false
        return presenterButton
        
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
        let views = [titleLabel, modelButton, viewButton, presenterButton]
        views.forEach { view.addSubview($0) }
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            modelButton.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 100),
            modelButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40),
            modelButton.widthAnchor.constraint(equalToConstant: 120),
            modelButton.heightAnchor.constraint(equalToConstant: 50),
            
            viewButton.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 100),
            viewButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40),
            viewButton.widthAnchor.constraint(equalToConstant: 120),
            viewButton.heightAnchor.constraint(equalToConstant: 50),
            
            presenterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            presenterButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            presenterButton.widthAnchor.constraint(equalToConstant: 120),
            presenterButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }

}

