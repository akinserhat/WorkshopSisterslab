//
//  CategoryComponent.swift
//  Workshop1
//
//  Created by omer kantar on 28/4/23.
//

import UIKit

public protocol CategoryComponentDataSource {
    var emoji: String { get }
    var name: String { get }
}


public final class CategoryComponent: UIView, ComponentProtocol, ConfigureProtocol {
    
    public typealias View = CategoryComponent
    
    public typealias DataSource = CategoryComponentDataSource
    
    @IBOutlet private var emojiLabel: UILabel!
    @IBOutlet private var nameLabel: UILabel!
    

    
    
    public override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configure(with data: DataSource) {
        emojiLabel.text = data.emoji
        nameLabel.text = data.name
    }
}
