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
        
        request(url, method: .get).validate().responseJSON { (response) in
            
            switch response.result {
             
            case .success(let value):
                print(value)
            case .failure(let error):
                print(error)
            }
        }
            
//            print(response)
//
//            guard let statusCode = response.response?.statusCode else { return }
//
//            print("statusCode: ", statusCode)
//
//            if (200..<300).contains(statusCode) {
//                let value = response.result.value
//                print("value: ", value ?? "nil")
//            } else {
//                let error = response.result.error
//                print(error ?? "error")
//            }
//        }
    }
    
}
