//
//  OnboardViewController.swift
//  MVVM+ReactiveCoordinator
//
//  Created by claudio cavalli on 13/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import RxSwift
import UIKit

class OnboardVC: UIViewController {
    // MARK: Private property
    private var viewModel: OnboardViewModel?
    private let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            self.viewModel?.makeHome.onNext(())
        })
    }
}

extension OnboardVC: OnboardVCDelegate {
    func setViewModel(onboardViewModel: OnboardViewModel) {
        viewModel = onboardViewModel
    }
}
