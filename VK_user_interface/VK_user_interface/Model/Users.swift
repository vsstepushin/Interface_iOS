//
//  Users.swift
//  VK_user_interface
//
//  Created by Виталий Степушин on 13.12.2020.
//

import UIKit

struct Users {
    var nameUser: String
    var surnameUser: String
    var avatarUser: UIImage?
    var photoUser: [UIImage?]
//
//    init(nameUser: String, surnameUser: String,avatarUser: String, photoUser: [String]) {
//        self.nameUser = nameUser
//        self.surnameUser = surnameUser
//        let img = UIImage(named: avatarUser)
//        self.avatarUser = img
//        let unwrappedImage = [UIImage(named: avatarUser)]
//        self.photoUser = unwrappedImage
    }
final class myFriends {
    static func mFriends() -> [Users] {
        
        let nikFiller = Users(nameUser: "Nik", surnameUser: "Filler", avatarUser: UIImage(named:"avatarNikFiller"), photoUser: [UIImage(named:"photo1NikFiller"), UIImage(named:"photo2NikFiller")])
        
        let maryFox = Users(nameUser: "Mary", surnameUser: "Fox", avatarUser: UIImage(named:"avatarMaryFox"), photoUser: [UIImage(named:"photo1MaryFox"),UIImage(named:"photo2MaryFox")])
        
        let maryJori = Users(nameUser: "Mary", surnameUser: "Jori", avatarUser: UIImage(named:"avatarMaryJori"), photoUser: [UIImage(named:"photo1MaryJori")])
        
        let maxPettyn = Users(nameUser: "Max", surnameUser: "Pettyn", avatarUser: UIImage(named:"avatarMaxPettyn"), photoUser: [UIImage(named:"photo1MaxPettyn")])
        
        let crisVellon = Users(nameUser: "Cris", surnameUser: "Vellon", avatarUser: UIImage(named:"avatarCrisVellon"), photoUser: [UIImage(named:"photo1CrisVellon"), UIImage(named:"photo2CrisVellon"), UIImage(named:"photo3CrisVellon")])
            
        return [nikFiller, maryFox, maryJori, maxPettyn, crisVellon]
    }
}
