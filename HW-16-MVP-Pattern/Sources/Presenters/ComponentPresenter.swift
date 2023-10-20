//
//  Presenter.swift
//  HW-16-MVP-Pattern
//
//  Created by Gabriel Zdravkovici on 20.10.2023.
//

import Foundation
import UIKit

typealias PresenterDelegate = ComponentPresenterDelegate & UIViewController

protocol ComponentPresenterDelegate: AnyObject {
    func presentComponent(components: [String: Component])
    func presentComponentInfo(title: String, description: String)
}

let componentsData = Component.data
    
class ComponentPresenter {
    
    weak var delegate: PresenterDelegate?
    
    public func getComponentInfo() {
        self.delegate?.presentComponent(components: componentsData)
    }
    
    public func setViewDelegate(delegate: PresenterDelegate) {
        self.delegate = delegate
    }
    
    public func didTap(component: Component) {
        delegate?.presentComponentInfo(title: component.title, description: component.description)
    }
}
