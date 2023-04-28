//
//  WorkshopLabel.swift
//  Workshop1
//
//  Created by omer kantar on 6/4/23.
//

import UIKit

//@IBDesignable
public class WorkshopLabel: UILabel {

    // Style, Theme, Stage
    // h1, h2, h3
    public enum Style: Int {
        
        case `default` = 0

        case title1 = 1
        
        case title2 = 2
        
        case title3 = 3
        
        case subtitle = 4
        
        case text = 5
                
        public init(value: Int) {
            self = Style(rawValue: value) ?? .default
        }
    }
    
    @IBInspectable
    public var style: Int = 0 {
        didSet {
            design(for: Style(value: style))
        }
    }
        
    private func design(for style: Style) {
        var font: UIFont?
        switch style {
        case .title1:
            font = UIFont.systemFont(ofSize: 20, weight: .bold)
        case .title2:
            font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        case .title3:
            font = UIFont.systemFont(ofSize: 17, weight: .medium)
        case .subtitle:
            font = UIFont.systemFont(ofSize: 14, weight: .regular)
        case .text:
            font = UIFont.systemFont(ofSize: 15, weight: .regular)
        default:
            font = UIFont.systemFont(ofSize: 15, weight: .regular)
        }
        if let font {
            self.font = font
        }
    }
    

}
