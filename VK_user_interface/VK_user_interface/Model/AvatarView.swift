//
//  AvatarView.swift
//  VK_user_interface
//
//  Created by Виталий Степушин on 15.12.2020.
//

import UIKit

class AvatarView: UIImageView {

    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = bounds.height / 2
        layer.borderWidth = 3
        layer.borderColor = UIColor.darkGray.cgColor
        clipsToBounds = true
        }
    }

    class AvatarView2: UIImageView {
        
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 4.0
        layer.shadowRadius = 10
        
        layer.borderColor = UIColor.darkGray.cgColor
        layer.borderWidth = 2
        
        layer.cornerRadius = bounds.height / 2
        
        clipsToBounds = false
        
        let translation3D = CATransform3DMakeTranslation(-10, 10, 100)
        layer.transform = translation3D
        }
    }

