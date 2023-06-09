//
//  RecipeResponseModel.swift
//  Workshop1
//
//  Created by Akın Serhat Göksel on 9.06.2023.
//

import Foundation
/**
 {
     "results": [],
     "offset": 0,
     "number": 10,
     "totalResults": 5221
 }
 
 */
public struct RecipeResponseModel: Codable {

    public let recipes: [RecipeModel]
    public let offset, count, totalRecipes: Int

    private enum CodingKeys: String, CodingKey {
        case recipes = "results"
        case offset
        case count = "number"
        case totalRecipes = "totalResults"
    }
    
}
