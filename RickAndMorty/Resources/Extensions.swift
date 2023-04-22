//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Mekala Vamsi Krishna on 22/04/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
