//
//  Model.swift
//  CleanSwift
//
//  Created by Ilham Hadi Prabawa on 2/21/18.
//  Copyright © 2018 Ilham Hadi Prabawa. All rights reserved.
//

import Foundation

struct MyModel {
    struct Fetch {
        struct Request {
            var userName: String?
        }
        struct Response {
            var data: MyData?
            var isError: Bool
            var message: String?
        }
        struct ViewModel {
            var name: String?
            var date: String?
            var desc: String?
            var isError: Bool
            var message: String?
        }
    }
}
