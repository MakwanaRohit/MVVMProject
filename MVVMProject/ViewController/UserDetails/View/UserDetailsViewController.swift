//
//  UserDetailsViewController.swift
//  MVVMProject
//
//  Created by Rohit Makwana on 27/06/21.
//

import UIKit

class UserDetailsViewController: UIViewController {

    //MARK:- IBOutlets
    @IBOutlet weak var detailsTextView: UITextView!
    
    //MARK:- Declared Variables
    var userDetailViewModel : UserDetailViewModel!
    static func instantiate() -> UserDetailsViewController? {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "UserDetailsViewController") as? UserDetailsViewController
    }

    //MARK:- View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialization()
    }
}


//MARK:- Initialization
extension UserDetailsViewController {
    func initialization() {
        self.title = "User's Content"
        if let userData = userDetailViewModel {
            self.detailsTextView.text = userData.userModel.content
        }
    }
}
