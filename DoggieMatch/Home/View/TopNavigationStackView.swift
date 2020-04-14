//
//  TopNavigationStackView.swift
//  DoggieMatch
//
//  Created by Alexis Orellano on 4/13/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class TopNavigationStackView: UIStackView {
    let settingsButton = UIButton(type: .system)
    let messageButton = UIButton(type: .system)
    let logoImageView = UIImageView(image: #imageLiteral(resourceName: "DogIcon"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupSubviews()
        setupStackView()
    }
    
    func setupSubviews() {
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.clipsToBounds = true
        
        settingsButton.setImage(#imageLiteral(resourceName: "SettingsIcon"), for: .normal)
        messageButton.setImage(#imageLiteral(resourceName: "MessagesIcon"), for: .normal)
    }
    
    func setupStackView() {
        [settingsButton, UIView(), logoImageView, UIView(), messageButton].forEach{ (view) in
            addArrangedSubview(view)
        }
        
        distribution = .equalCentering
        heightAnchor.constraint(equalToConstant: 80).isActive = true
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
