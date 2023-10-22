//
//  Builder.swift
//  HW-16-MVP-Pattern
//
//  Created by Gabriel Zdravkovici on 22.10.2023.
//

import Foundation

class Builder {
    
    static func build() -> ViewController {
        let viewController = ViewController()
        let presenter = ComponentPresenter()
        
        viewController.presenter = presenter
        presenter.delegate = viewController
        
        return viewController
    }
}

