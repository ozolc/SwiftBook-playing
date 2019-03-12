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
    
    static func sendRequest(url: String, completion: @escaping ( _ course: [Course]) -> () ) {
        
        guard let url = URL(string: url) else { return }
        
        request(url, method: .get).validate().responseJSON { (response) in
            
            switch response.result {
             
            case .success(let value):
                print(value)
                
                guard let arrayOFItems = value as? Array<[String: Any]> else { return }
                
                var courses = [Course]()

                for field in arrayOFItems {
                    
                    let course = Course(id: field["id"] as? Int,
                                        name: field["name"] as? String,
                                        link: field["link"] as? String,
                                        imageUrl: field["imageUrl"] as? String,
                                        numberOfLessons: field["numberOfLessons"] as? Int,
                                        numberOfTests: field["numberOfTests"] as? Int)
                    courses.append(course)
                }
                
                completion(courses)
                
            case .failure(let error):
                print(error)
            }
        }
            
    }
    
}
