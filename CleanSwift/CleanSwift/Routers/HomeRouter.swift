//
//  HomeRouter.swift
//  CleanSwift
//
//  Created by Samanta Clara Coutinho Rondon do Nascimento on 2019-08-02.
//  Copyright (c) 2019 Sam. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol HomeRoutingLogic {
  func routeToSomewhere(home: HomeViewController)
}

class HomeRouter: NSObject, HomeRoutingLogic {
    
    var navigationController: UIViewController
    
    init(navigationController: UIViewController) {
        self.navigationController = navigationController
    }

  // MARK: Routing
    func routeToSomewhere(home: HomeViewController) {
        home.dismiss(animated: false, completion: nil)
        
        let login = LoginViewController(interactor: LoginInteractor(worker: LoginWorker()), router: LoginRouter(navigationController: navigationController), presenter: LoginPresenter())
        navigationController.present(login, animated: false, completion: nil)
    }
}
