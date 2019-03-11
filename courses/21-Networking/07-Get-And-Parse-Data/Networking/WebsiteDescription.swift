//
//  WebsiteDescription.swift
//  Networking
//
//  Created by Maksim Nosov on 11/03/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import Foundation

struct WebsiteDescription: Decodable {
    
    let websiteDescription: String?
    let websiteName: String?
    let courses: [Course]
}
