//
//  User.swift
//  MVVMProject
//
//  Created by Rohit Makwana on 27/06/21.
//

import Foundation

// MARK: - UserElement
struct UserModel: Codable {
    let id: Int?
    let title, subtitle, content: String?
}

typealias Users = [UserModel]
