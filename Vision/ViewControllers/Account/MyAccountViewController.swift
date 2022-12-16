//
//  MyAccountViewController.swift
//  Vision
//
//  Created by Denys on 28.05.2022.
//

import UIKit
import Moya
import SwiftKeychainWrapper
class MyAccountViewController: UIViewController {
    var window: UIWindow?
    @IBOutlet var name: UILabel!
    @IBOutlet var email: UILabel!
    @IBOutlet var logOut: UIButton!
    @IBOutlet var editInfo: UIButton!
    @IBAction func logOutButtonTapped(_ sender: Any) {
        signOUT()
    }
    let userProvider =  MoyaProvider<UserService>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userProvider.request(.readUsers){ result in
            switch result {
            case .success(let response):
                let json = try! JSONSerialization.jsonObject(with: response.data, options: .mutableContainers) as? NSDictionary
                if let parseJSON = json {
                    let first_name = parseJSON["name"] as? String
                    let last_name = parseJSON["surname"] as? String
                    let email = parseJSON["email"] as? String
                    self.email.text = email
                    self.name.text = first_name! + " " + last_name!
                }
            case .failure(let error):
                print(error)
                
            }
        }
        
    }
    // MARK: - signOUT
    func signOUT() {
        // Delete token of signed in user
        KeychainWrapper.standard.removeObject(forKey: "accessToken")
        
        // Transition to signIN screen
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let loginPage = storyboard.instantiateViewController(withIdentifier: "signIn")
        window?.rootViewController = loginPage
        window?.makeKeyAndVisible()
    }
    
}
