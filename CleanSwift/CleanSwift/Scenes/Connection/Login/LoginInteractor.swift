//
//  LoginInteractor.swift
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

protocol LoginBusinessLogic {
  func doSomething(request: Login.Request)
}

protocol LoginDataStore {
  var name: String { get set }
}

class LoginInteractor: LoginBusinessLogic, LoginDataStore {
  var presenter: LoginPresentationLogic
  var worker: LoginWorker
  var name: String = ""
  
    init(presenter: LoginPresentationLogic, worker: LoginWorker) {
        self.presenter = presenter
        self.worker = worker
    }
    
  // MARK: Do something
  
  func doSomething(request: Login.Request) {
    worker.doSomeWork(user: request)
    
    let response = Login.Response()
    presenter.presentSomething(response: response)
  }
}