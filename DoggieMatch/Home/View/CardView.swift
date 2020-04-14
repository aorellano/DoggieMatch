//
//  CardView.swift
//  DoggieMatch
//
//  Created by Alexis Orellano on 4/13/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class CardView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    }
    
    func setupLayout() {
        layer.cornerRadius = 10
        clipsToBounds = true
        backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
