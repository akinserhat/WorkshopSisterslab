//
//  ConfigureProtocol.swift
//  Workshop1
//
//  Created by omer kantar on 28/4/23.
//

import Foundation


// MARK: - generic type configureprotocol has to implement custom views.
public protocol ConfigureProtocol {
    associatedtype DataSource
    func configure(with data: DataSource)
}
