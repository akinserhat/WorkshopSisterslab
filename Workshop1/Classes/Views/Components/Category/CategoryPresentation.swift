//
//  CategoryPresentation.swift
//  Workshop1
//
//  Created by Akın Serhat Göksel on 28.04.2023.
//

import UIKit

public final class CategoryPresentation: CategoryComponentDataSource {
    public var emoji: String
    
    public var name: String
    
    public init(emoji: String, name: String) {
        self.emoji = emoji
        self.name = name
    }
    
    
}
