//
//  UIImageView.swift
//  Workshop1
//
//  Created by omer kantar on 28/4/23.
//

import UIKit

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
                switch (string.url, string.image) {
                case (.some(let url), nil):
                    self = .url(url)
                case (nil, .some(let image)):
                    self = .image(image)
                default:
                    return nil
                }
            case let image as UIImage:
                self = .image(image)
            case let url as URL:
                self = .url(url)
            default: return nil
            }
        }
    }
    
    
    func setImage(with data: Any?) {
        setImage(with: Resource(data))
    }
    
    func setImage(with resource: Resource?) {
        guard let resource else {
            return
        }
        switch resource {
        case let .image(image):
            self.image = image
        case let .url(url):
            // TODO: - load url
            let request = URLRequest(url: url)
            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data else {
                    return
                }
                DispatchQueue.main.async {
                    self.image = UIImage(data: data)
                }
            }
            task.resume()
        }
    }
}

