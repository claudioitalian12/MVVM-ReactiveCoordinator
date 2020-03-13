//
//  OnboardViewModel.swift
//  MVVM+ReactiveCoordinator
//
//  Created by claudio cavalli on 13/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import RxCocoa
import RxSwift
import UIKit

// MARK: Vista del controller
protocol OnboardVCDelegate: class {
    func setViewModel(onboardViewModel: OnboardViewModel)
}

class OnboardViewModel {
    // MARK: Public property
    let makeHome = PublishSubject<Void>()
    // MARK: Private property
    let disposeBag = DisposeBag()
    private var onboardView: OnboardVCDelegate?
    
    // MARK: Init method
    init(viewController: OnboardVCDelegate) {
        onboardView = viewController
        onboardView?.setViewModel(onboardViewModel: self)
    }
}
