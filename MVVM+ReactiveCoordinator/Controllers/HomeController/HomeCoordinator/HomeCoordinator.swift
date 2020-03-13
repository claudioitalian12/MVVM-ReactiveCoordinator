//
//  HomeCoordinator.swift
//  MVVM+ReactiveCoordinator
//
//  Created by claudio cavalli on 13/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import UIKit
import RxSwift

class HomeViewCoordinator: BaseCoordinator {
    // MARK: Private property
    private let disposeBag = DisposeBag()

    override func start() {
        let viewController = HomeVC()
        let transition = CATransition()
        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        transition.type = .push
        transition.subtype = .fromTop
        navigationController.view.layer.add(transition, forKey: kCATransition)
        navigationController.pushViewController(viewController, animated: false)
        let homeViewModel = HomeViewModel(viewController: viewController)
        viewController.setViewModel(homeViewModel: homeViewModel)
        homeViewModel.removeHome
            .subscribe(onNext: { [weak self] in
                guard let `self` = self else { return }
                self.navigationController.popViewController(animated: true)
                self.didFinish(coordinator: self)
            })
            .disposed(by: disposeBag)
    }
}
