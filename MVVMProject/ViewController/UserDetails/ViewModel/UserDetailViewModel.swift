//
//  UserDetailViewModel.swift
//  MVVMProject
//
//  Created by Rohit Makwana on 27/06/21.
//

import Foundation

class UserDetailViewModel {
    private(set) var userModel : UserModel!
    init(_ userModel: UserModel) {
        self.userModel = userModel
    }
}
