//
//  BaseCoordinator.swift
//  MVVM+ReactiveCoordinator
//
//  Created by claudio cavalli on 13/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import UIKit

class BaseCoordinator: Coordinator {
    private var window: UIWindow?
    private var childCoordinators: [Coordinator] = []
    var parentCoordinator: Coordinator?
    var navigationController = UINavigationController()
   
    func start() {}

    func start(coordinator: Coordinator) {
        childCoordinators.append(coordinator)
        coordinator.parentCoordinator = self
        coordinator.start()
    }

    func didFinish(coordinator: Coordinator) {
        if let index = self.childCoordinators.firstIndex(where: { $0 === coordinator }) {
            childCoordinators.remove(at: index)
        }
    }
}
