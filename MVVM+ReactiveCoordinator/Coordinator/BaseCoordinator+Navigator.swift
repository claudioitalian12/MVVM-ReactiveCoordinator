//
//  BaseCoordinator+Navigator.swift
//  MVVM+ReactiveCoordinator
//
//  Created by claudio cavalli on 13/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import Foundation

protocol Navigator {
    func makeOnboard()
    func makeHome(completion: () -> Void)
}

extension BaseCoordinator: Navigator {
    func makeOnboard() {
        // MARK: OnboardCoordinator
        let coordinator = OnboardCoordinator()
        coordinator.navigationController = navigationController
        start(coordinator: coordinator)
    }
    func makeHome(completion: () -> Void) {
         // MARK: HomeViewCoordinator
         let coordinator = HomeViewCoordinator()
         coordinator.navigationController = navigationController
         start(coordinator: coordinator)
    }
}
