//
//  RepoWorker.swift
//  CleanSwift
//
//  Created by Ilham Hadi Prabawa on 2/22/18.
//  Copyright © 2018 Ilham Hadi Prabawa. All rights reserved.
//

import Foundation
import Alamofire

typealias responseHandler = (_ response: MyModel.Fetch.Response) -> ()

class RepoWorker {
    
    func fetchRepo(userName: String?, success: @escaping(responseHandler), fail: @escaping(responseHandler)){
        
        let url = "users/\(userName ?? "admin")/repos"
        Alamofire.request(Constants.BASE_URL.appending(url), method: .get, parameters: nil, encoding: URLEncoding.httpBody, headers: nil).responseJSON { (response) in
            switch (response.result){
            case .failure(let error):
                fail(MyModel.Fetch.Response(data: nil, isError: true, message: error.localizedDescription))
                break
            case .success(let value):
                success(MyModel.Fetch.Response(data: value, isError: false, message: nil))
                break
            }
        }
    }
   
    
}
