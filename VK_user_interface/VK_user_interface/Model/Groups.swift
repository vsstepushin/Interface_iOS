//
//  Groups.swift
//  VK_user_interface
//
//  Created by Виталий Степушин on 13.12.2020.
//

import UIKit

class Groups{
    var nameGroup: String
    var avatarGroup: UIImage?
    
    init(nameGroup: String, avatarGroup: String) {
        self.nameGroup = nameGroup
        self.avatarGroup = UIImage(named: avatarGroup)
    }
    
}

extension Groups: Equatable {
    static func == (lhs: Groups, rhs: Groups) -> Bool {
        lhs.nameGroup == rhs.nameGroup && lhs.avatarGroup == rhs.avatarGroup
    }
}
