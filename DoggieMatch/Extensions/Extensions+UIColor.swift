//
//  Extensions+UIColor.swift
//  DoggieMatch
//
//  Created by Alexis Orellano on 4/13/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//
import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}
