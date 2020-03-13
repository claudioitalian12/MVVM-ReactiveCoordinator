//
//  AppCoordinator.swift
//  MVVM+ReactiveCoordinator
//
//  Created by claudio cavalli on 06/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import UIKit

class AppCoordinator: BaseCoordinator {    
    override func start() {
        navigationController.navigationBar.isHidden = true
        navigationController.interactivePopGestureRecognizer?.isEnabled = true
        makeOnboard()
    }
}
