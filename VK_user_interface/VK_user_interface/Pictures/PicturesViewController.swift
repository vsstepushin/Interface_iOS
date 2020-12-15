//
//  PicturesViewController.swift
//  VK_user_interface
//
//  Created by Виталий Степушин on 14.12.2020.
//

import UIKit

class PicturesViewController: UICollectionViewController {

    var friend: Users!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(friend.nameUser) \(friend.surnameUser)"
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int { 1 }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { friend.photoUser.count }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "friendsPhoto", for: indexPath) as! PicturesCell
        let album = friend.photoUser[indexPath.row]
        cell.picturesUser.image = album
        return cell
    }

}
