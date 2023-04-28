//
//  RecipeCollectionViewCell.swift
//  Workshop1
//
//  Created by omer kantar on 13/4/23.
//

import UIKit

public extension String {
    var url: URL? {
        URL(string: self)
    }
    
    var image: UIImage? {
        UIImage(named: self)
    }
}


public protocol RecipeCollectionViewCellDataSource {
    var imageName: String { get }
    var title: String { get }
    var subtitle: String { get }
}



public final class RecipeCollectionViewCell: UICollectionViewCell {
    
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
        
    }
    
}
