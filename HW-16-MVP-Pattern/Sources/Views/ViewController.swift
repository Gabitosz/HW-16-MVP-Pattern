//
//  ViewController.swift
//  HW-16-MVP-Pattern
//
//  Created by Gabriel Zdravkovici on 18.10.2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Outlets
    
    private let modalViewController = ModalViewController()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Архитектурный паттерн \n MVP"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 26)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        return label
    }()
    
    private lazy var modelButton: UIButton = {
        let modelButton = UIButton(type: .system)
        modelButton.addTarget(self, action: #selector(modelOpenModalButtonTapped), for: .touchUpInside)
        modelButton.setTitle("Model", for: .normal)
        modelButton.setTitleColor(.blue, for: .normal)
        modelButton.backgroundColor = .init(red: 214 / 255, green: 232 / 255, blue: 213 / 255, alpha: 1)
        modelButton.layer.cornerRadius = 15
        modelButton.translatesAutoresizingMaskIntoConstraints = false
        return modelButton
        
    }()
    
    private lazy var viewButton: UIButton = {
        let viewButton = UIButton(type: .system)
        viewButton.addTarget(self, action: #selector(viewOpenModalButtonTapped), for: .touchUpInside)
        viewButton.setTitle("View", for: .normal)
        viewButton.setTitleColor(.blue, for: .normal)
        viewButton.backgroundColor = .init(red: 255 / 255, green: 240 / 255, blue: 206 / 255, alpha: 1)
        viewButton.layer.cornerRadius = 15
        viewButton.translatesAutoresizingMaskIntoConstraints = false
        return viewButton
        
    }()
    
    private lazy var presenterButton: UIButton = {
        let presenterButton = UIButton(type: .system)
        presenterButton.addTarget(self, action: #selector(presenterOpenModalButtonTapped), for: .touchUpInside)
        presenterButton.setTitle("Presenter", for: .normal)
        presenterButton.setTitleColor(.blue, for: .normal)
        presenterButton.backgroundColor = .init(red: 225 / 255, green: 213 / 255, blue: 230 / 255, alpha: 1)
        presenterButton.layer.cornerRadius = 15
        presenterButton.translatesAutoresizingMaskIntoConstraints = false
        return presenterButton
        
    }()
    
    private lazy var rightArrowView: UIImageView = {
        let rightArrowView = UIImageView()
        rightArrowView.image = UIImage(named: "arrow.up.arrow-right")
        rightArrowView.translatesAutoresizingMaskIntoConstraints = false
        return rightArrowView
    }()
    
    private lazy var leftArrowView: UIImageView = {
        let leftArrowView = UIImageView()
        leftArrowView.image = UIImage(named: "arrow.up.arrow-left")
        leftArrowView.translatesAutoresizingMaskIntoConstraints = false
        return leftArrowView
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
        fillgradient()
    }
    
    private func setupHierarchy() {
        let views = [titleLabel, modelButton, viewButton, presenterButton, rightArrowView, leftArrowView]
        views.forEach { view.addSubview($0) }
    }
    
    // MARK: Actions
    
    @IBAction func modelOpenModalButtonTapped(_ sender: UIButton) {
        present(modalViewController, animated: true, completion: nil)
        
    }
    
    @IBAction func viewOpenModalButtonTapped(_ sender: UIButton) {
        
        
    }
    
    @IBAction func presenterOpenModalButtonTapped(_ sender: UIButton) {
        
        
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
            
            rightArrowView.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 45),
            rightArrowView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100),
            rightArrowView.widthAnchor.constraint(equalToConstant: 35),
            rightArrowView.heightAnchor.constraint(equalToConstant: 35),
            
            leftArrowView.topAnchor.constraint(equalTo: view.centerYAnchor, constant: 45),
            leftArrowView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            leftArrowView.widthAnchor.constraint(equalToConstant: 35),
            leftArrowView.heightAnchor.constraint(equalToConstant: 35),
        ])
    }

}

extension ViewController {
    
    // Заливка фона
    private func fillgradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        let firstColor = UIColor(red: 247 / 255, green: 230 / 255, blue: 117 / 255, alpha: 1)
        let secondColor = UIColor(red: 247 / 255, green: 194 / 255, blue: 141 / 255, alpha: 1)
        let thirdColor = UIColor(red: 227 / 255, green: 131 / 255, blue: 154 / 255, alpha: 1)
        gradientLayer.colors = [firstColor.cgColor, secondColor.cgColor, thirdColor.cgColor]
        gradientLayer.locations = [0.3, 0.6, 0.9]
        view.layer.addSublayer(gradientLayer)
    }
}


