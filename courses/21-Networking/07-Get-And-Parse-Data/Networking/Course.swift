//
//  Course.swift
//  Networking
//
//  Created by Maksim Nosov on 11/03/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import Foundation

struct Course: Decodable {
    
    let id: Int?
    let name: String?
    let link: String?
    let imageUrl: String?
    let number_of_lessons: Int?
    let number_of_tests: Int?
}
