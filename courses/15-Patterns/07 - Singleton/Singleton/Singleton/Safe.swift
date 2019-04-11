//
//  Safe.swift
//  Singleton
//
//  Created by Maksim Nosov on 11/04/2019.
//  Copyright © 2019 Maksim Nosov. All rights reserved.
//

class Safe {
    
    var money = 0
    static let shared = Safe()
    
    private init() {}
}
