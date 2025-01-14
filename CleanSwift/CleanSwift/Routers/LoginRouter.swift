//
//  LoginRouter.swift
//  CleanSwift
//
//  Created by Samanta Clara Coutinho Rondon do Nascimento on 2019-08-01.
//  Copyright (c) 2019 Sam. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol LoginRoutingLogic {
    func routeToSomewhere(login: LoginViewController, user: UserRealm)
}

protocol LoginDataPassing {
    var dataStore: LoginDataStore? { get }
}

class LoginRouter: NSObject, LoginRoutingLogic, LoginDataPassing {
    var dataStore: LoginDataStore?

    var navigationController: UIViewController

    init(navigationController: UIViewController) {
        self.navigationController = navigationController
    }
  // MARK: Routing and navigation

    func routeToSomewhere(login: LoginViewController, user: UserRealm) {
        login.dismiss(animated: false, completion: nil)
        let homeViewController = HomeViewController(interactor: HomeInteractor(worker: HomeWorker(), user: user), router: HomeRouter(navigationController: navigationController), presenter: HomePresenter())
        navigationController.present(homeViewController, animated: false, completion: nil)
  }
}
