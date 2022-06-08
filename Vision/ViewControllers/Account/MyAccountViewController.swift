//
//  MyAccountViewController.swift
//  Vision
//
//  Created by Denys on 28.05.2022.
//

import UIKit
import Moya
class MyAccountViewController: UIViewController {
    @IBOutlet var name: UILabel!
    @IBOutlet var email: UILabel!
    @IBOutlet var logOut: UIButton!
    @IBOutlet var editInfo: UIButton!
    let userProvider =  MoyaProvider<UserService>()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        userProvider.request(.readUsers){ result in
                switch result {
                case .success(let response):
                    let json = try! JSONSerialization.jsonObject(with: response.data, options: .mutableContainers) as? NSDictionary
                    if let parseJSON = json {
                        let first_name = parseJSON["first_name"] as? String
                        let last_name = parseJSON["last_name"] as? String
                        let email = parseJSON["email"] as? String
                        self.email.text = email
                        self.name.text = first_name! + " " + last_name!
                    }
                case .failure(let error):
                    print(error)
                    
                }
        }
        
        
        
    }
    



}
