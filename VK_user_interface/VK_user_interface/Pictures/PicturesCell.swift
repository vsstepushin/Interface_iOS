//
//  PicturesCell.swift
//  VK_user_interface
//
//  Created by Виталий Степушин on 14.12.2020.
//

import UIKit

class PicturesCell: UICollectionViewCell {
 
    @IBOutlet weak var picturesUser: UIImageView!

    @IBOutlet weak var likeBut: UIButton!
    
    
    @IBOutlet weak var likeCount: UILabel!
    

    
    @IBAction func likes(_ sender: Any) {
        likeBut.isSelected.toggle()
                likeCount.textColor = likeBut.isSelected ? .red : .systemGray
                likeCount.text = likeBut.isSelected ? "1" : "0"
                if likeBut.isSelected {
                }
    }

}
