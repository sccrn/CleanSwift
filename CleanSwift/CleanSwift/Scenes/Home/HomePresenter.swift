//
//  HomePresenter.swift
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

protocol HomePresentationLogic
{
  func presentSomething(response: Home.Response)
}

class HomePresenter: HomePresentationLogic
{
  weak var viewController: HomeDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Home.Response)
  {
    let viewModel = Home.ViewModel()
    viewController?.displaySomething(viewModel: viewModel)
  }
}
