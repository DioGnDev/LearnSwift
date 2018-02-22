//
//  RepoRouter.swift
//  CleanSwift
//
//  Created by Ilham Hadi Prabawa on 2/22/18.
//  Copyright © 2018 Ilham Hadi Prabawa. All rights reserved.
//

import Foundation

protocol RepoRouterInput {
    func showSomeVC()
}
class RepoRouter : RepoRouterInput {
    
    weak var tableViewController: RepoTableViewController!
    
    func showSomeVC() {
        tableViewController.performSegue(withIdentifier: "someVC", sender: nil)
    }
}
