//
//  ComponentProtocol.swift
//  Workshop1
//
//  Created by omer kantar on 28/4/23.
//

import UIKit

public protocol ComponentProtocol {
    associatedtype View: UIView
}

public extension ComponentProtocol {
    static func make() -> View {
        guard let view = Bundle.main.loadNibNamed(String(describing: View.self), owner: nil)?.first as? View else {
            let errorMessage = "\(View.self).xib file did not find on the project."
            fatalError(errorMessage)
        }
        return view
    }
}

