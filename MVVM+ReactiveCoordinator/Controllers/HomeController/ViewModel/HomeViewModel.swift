//
//  HomeViewModel.swift
//  MVVM+ReactiveCoordinator
//
//  Created by claudio cavalli on 13/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import RxCocoa
import RxSwift
import UIKit

// MARK: Vista del controller

protocol HomeVCDelegate: class {
   func setViewModel(homeViewModel: HomeViewModel)
}

class HomeViewModel {
    // MARK: Public property
    let removeHome = PublishSubject<Void>()
    // MARK: Private property
    private let disposeBag = DisposeBag()
    private var homeView: HomeVCDelegate?
    // MARK: Init method
    init(viewController: HomeVCDelegate) {
        homeView = viewController
        homeView?.setViewModel(homeViewModel: self)
    }
}
