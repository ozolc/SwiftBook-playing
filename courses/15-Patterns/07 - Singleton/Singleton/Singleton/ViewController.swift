//
//  ViewController.swift
//  Singleton
//
//  Created by Maksim Nosov on 11/04/2019.
//  Copyright © 2019 Maksim Nosov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let safe = Safe.shared
        print(safe.money)
        
//        let safe1 = Safe()
        
    }


}

