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

public extension UIImageView {
    enum Resource {
        case url(URL)
        case image(UIImage)
        
        public init?(_ source: Any?) {
            guard let source else {
                return nil
            }
            switch source {
            case let string as String:
                if let url = string.url {
                    
                } else if let image = string.image {
                    
                }
                
                switch (string.url, string.image) {
                case (.some(let url), nil):
                    
                    
                }
                
            case let image as UIImage:
                self = .image(image)
            case let url as URL:
                self = .url(url)
            default: return nil
            }
        }
    }
    
    
    func configure(with data: Any?) {
        configure(with: Resource(data))
    }
    
    func configure(with resource: Resource?) {
        guard let resource else {
            return
        }
        switch resource {
        case let .image(image):
            self.image = image
        case let .url(url):
            // TODO: - load url
            break
        }
    }
}

public protocol RecipeCollectionViewCellDataSource {
    var imageName: String { get }
    var title: String { get }
    var subtitle: String { get }
}

// TODO: - generic type configureprotocol has to implement custom views.
public protocol ConfigureProtocol {
    associatedtype DataSource
    func configure(with data: DataSource)
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
