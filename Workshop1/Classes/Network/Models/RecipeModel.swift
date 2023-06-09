//
//  RecipeModel.swift
//  Workshop1
//
//  Created by Akın Serhat Göksel on 4.05.2023.
//

import Foundation

/**
 {
             "id": 782585,
             "title": "Cannellini Bean and Asparagus Salad with Mushrooms",
             "image": "https://spoonacular.com/recipeImages/782585-312x231.jpg",
             "imageType": "jpg"
}
 
*/
public struct RecipeModel: Codable {
    public let id: Int
    public let name: String
    public let imageUrl: String?
    public var likeCount: Int?
    public let createdAt: String?
    
    private enum CodingKeys: String, CodingKey {
        case id, likeCount, createdAt
        case name = "title"
        case imageUrl = "image"
        
    }
}


