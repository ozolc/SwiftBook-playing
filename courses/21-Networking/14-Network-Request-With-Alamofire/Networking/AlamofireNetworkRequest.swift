//
//  AlamofireNetworkRequest.swift
//  Networking
//
//  Created by Maksim Nosov on 12/03/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import Foundation
import Alamofire

class AlamofireNetworkRequest {
    
    static func sendRequest(url: String) {
        
        guard let url = URL(string: url) else { return }
        
        request(url, method: .get).responseJSON { (response) in
            print(response)
        }
        
    }
    
}
