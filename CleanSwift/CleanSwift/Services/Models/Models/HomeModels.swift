//
//  HomeModels.swift
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

enum Home {
  // MARK: Use cases
    struct Request {
        let userId: String
    }
    
    struct Response {
        let statementsList: StatementList?
        let error: String?
    }
    
    struct ViewModel {
        let user: UserRealm
        let response: Response
    }
}