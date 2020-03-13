//
//  HomeVC.swift
//  MVVM+ReactiveCoordinator
//
//  Created by claudio cavalli on 13/03/2020.
//  Copyright © 2020 claudio cavalli. All rights reserved.
//

import UIKit
import RxSwift

class HomeVC: UIViewController {
    // MARK: Private property
    private var viewModel: HomeViewModel?
    private let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}

extension HomeVC: HomeVCDelegate {
    func setViewModel(homeViewModel: HomeViewModel) {
           viewModel = homeViewModel
       }
}
