//
//  String.swift
//  Workshop1
//
//  Created by Akın Serhat Göksel on 4.05.2023.
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
