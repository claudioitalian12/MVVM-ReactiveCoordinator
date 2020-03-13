//
//  OnboardCoordinator.swift
//  MVVM+ReactiveCoordinator
//
//  Created by claudio cavalli on 13/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import RxSwift
import UIKit

class OnboardCoordinator: BaseCoordinator {
    // MARK: Private property
    private let disposeBag = DisposeBag()
    
    override func start() {
        let viewController = OnboardVC()
        navigationController.viewControllers = [viewController]
        let onboardViewModel = OnboardViewModel(viewController: viewController)
        onboardViewModel.makeHome
            .subscribe(onNext: { [weak self] in
                guard let `self` = self else { return }
                self.makeHome(completion: {
                    viewController.removeFromParent()
                    self.didFinish(coordinator: self)
                })
            })
            .disposed(by: disposeBag)
    }
}
