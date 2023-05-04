//
//  RecipeCollectionViewCell.swift
//  Workshop1
//
//  Created by omer kantar on 13/4/23.
//

import UIKit



public protocol RecipeCollectionViewCellDataSource {
    var image: UIImageView.Resource? { get }
    var title: String { get }
    var subtitle: String { get }
}



public final class RecipeCollectionViewCell: UICollectionViewCell, ConfigureProtocol {
    
    public typealias DataSource = RecipeCollectionViewCellDataSource
    
    @IBOutlet private var imageView: UIImageView!
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var subtitleLabel: UILabel!
    
    

    
    public override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = nil
        subtitleLabel.text = nil
        imageView.image = nil
    }
    
    
    public func configure(with data: RecipeCollectionViewCellDataSource) {
        titleLabel.text = data.title
        subtitleLabel.text = data.subtitle
        imageView.setImage(with: data.image)
    }
    
}
