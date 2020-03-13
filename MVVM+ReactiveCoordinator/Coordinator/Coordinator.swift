//
//  Coordinator.swift
//  MVVM+ReactiveCoordinator
//
//  Created by claudio cavalli on 13/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import UIKit

// MARK: Coordinator per la navigazione

protocol Coordinator: class {
    var navigationController: UINavigationController { get set }
    var parentCoordinator: Coordinator? { get set }

    func start()
    func start(coordinator: Coordinator)
    func didFinish(coordinator: Coordinator)
}
