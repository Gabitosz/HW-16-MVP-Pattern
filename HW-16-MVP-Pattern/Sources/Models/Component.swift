//
//  Component.swift
//  HW-16-MVP-Pattern
//
//  Created by Gabriel Zdravkovici on 20.10.2023.
//

import Foundation

struct Component {
    let title: String
    let description: String
}

extension Component {
    static var data: [String: Component] = ["Model":
                                                Component(title: "Model", description: "ответственные за данные домена или слой доступа к данным, который манипулирует данными"),
                                            "View":
                                                Component(title: "View", description: "Представление состоит из представлений и из контроллеров представлений, со всеми настройками пользовательского интерфейса и событиями."),
                                            "Presenter":
                                                Component(title: "Presenter", description: "Докладчик отвечает за всю логику, включая реагирование на действия пользователя и обновление пользовательского интерфейса (через делегата) и самое главное, что наш докладчик не будет зависеть от UIKit. что означает, что он хорошо изолирован, следовательно, легко тестируемый")
    ]
}
