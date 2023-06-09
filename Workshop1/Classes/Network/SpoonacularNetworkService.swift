//
//  SpoonacularNetworkService.swift
//  Workshop1
//
//  Created by Akın Serhat Göksel on 9.06.2023.
//

import Foundation

public protocol SpoonacularNetworkService {
    
}

public extension SpoonacularNetworkService {
    func request() {
        var request = URLRequest(url: URL(string: "https://api.spoonacular.com/recipes/complexSearch?apiKey=881f52dcb63c4a14a4a1e1103d567988")!,timeoutInterval: Double.infinity)
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                print(String(describing: error))
                return
            }
            print(String(data: data, encoding: .utf8)!)
        }
        
        task.resume()
    }
}
