//
//  Presenter.swift
//  HW-16-MVP-Pattern
//
//  Created by Gabriel Zdravkovici on 20.10.2023.
//

import Foundation

protocol ComponentPresenterDelegate: AnyObject {
    func presentComponents(components: [String: Component])
    func presentComponentInfo(title: String, description: String)
}

protocol ViewDelegate: AnyObject {
    func getComponentInfo()
    func didTap(component: Component)
}

class ComponentPresenter: ViewDelegate {
    
    weak var delegate: ComponentPresenterDelegate?
    private let componentsData = Component.data
    
    func getComponentInfo() {
        self.delegate?.presentComponents(components: componentsData)
    }
    
    func didTap(component: Component) {
        delegate?.presentComponentInfo(title: component.title, description: component.description)
    }
}
