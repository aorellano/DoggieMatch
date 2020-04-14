//
//  HomeBottomControlsStackView.swift
//  DoggieMatch
//
//  Created by Alexis Orellano on 4/13/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class HomeBottomControlsStackView: UIStackView {
    let dislikeButton = createButton(image: #imageLiteral(resourceName: "DismissButton"))
    let donateButton = createButton(image: #imageLiteral(resourceName: "DonateButton"))
    let likeButton = createButton(image: #imageLiteral(resourceName: "LikeButton"))
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupStackview()
    }
    
    func setupStackview() {
        [dislikeButton, donateButton, likeButton].forEach{ (button) in
            self.addArrangedSubview(button)
        }
        
        distribution = .fillEqually
        heightAnchor.constraint(equalToConstant: 100).isActive = true
    }

    static func createButton(image: UIImage) -> UIButton {
        let button = UIButton(type: .system)
        button.setImage(image.withRenderingMode(.alwaysOriginal), for: .normal)
        button.imageView?.contentMode = .scaleAspectFill
        button.imageView?.clipsToBounds = true
        return button
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
