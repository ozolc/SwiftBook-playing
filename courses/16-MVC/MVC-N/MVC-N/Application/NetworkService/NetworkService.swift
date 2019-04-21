//
//  NetworkService.swift
//  MVC-N
//
//  Created by Maksim Nosov on 21/04/2019.
//  Copyright © 2019 Maksim Nosov. All rights reserved.
//

import Foundation

class NetworkService {
    static let shared = NetworkService()
    private init() {}
    
    public func getData(url: URL, completion: @escaping (Any) -> ()) {
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            } catch {
                print(error)
            }
        }.resume()
    }
}
