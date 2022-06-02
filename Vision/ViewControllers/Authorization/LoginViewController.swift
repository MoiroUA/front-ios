//
//  LoginViewController.swift
//  RegistrationMenu
//
//  Created by Denys on 07.05.2022.
//

import UIKit
import Moya
import SwiftKeychainWrapper
class LoginViewController: UIViewController {
    
    
    @IBOutlet private var email: RoundedTextField!
    @IBOutlet var password: RoundedTextField!
    let textColored: TextColored = TextColored()
    @IBOutlet var signUp: UIButton!
    @IBOutlet var signIn: RoundedButton!
    let userProvider =  MoyaProvider<UserService>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textColored.changeColor(button: signUp!, quote: "Не маєте облікового запису? Зареєструватися", colorText1: UIColor(named: "AppBlack")!, colorText2: UIColor(named: "AppDarkGreen")!, text1: "Не маєте облікового запису?", text2: " Зареєструватися", font: .init(name: "HelveticaNeue", size: 11.0)!)
       

    }
    
    override func viewDidAppear(_ animated: Bool) {
        //  checkUserInfo()
        
    }
    
    @IBAction func signInTapped(_ sender: Any) {
        validateField()
        
    }
    
    
    @IBAction func signUpTapped(_ sender: Any) {
        
    }
    
    func validateField() {
        guard email.text?.isEmpty == false else { print ("No email is entered"); return}
        guard password.text?.isEmpty == false else { print ("No password is entered"); return}
        
        login()
    }
    
    func login () {
        // Sign in method
        userProvider.request(.loginUser(username: email.text!, password: password.text!)){ result in
            switch result {
            case .success(let response):
                let json = try! JSONSerialization.jsonObject(with: response.data, options: .mutableContainers) as? NSDictionary
                if let parseJSON = json {
                    let accessToken = parseJSON["token"] as? String
                
                    print("accessToken: \(String(describing: accessToken))")
                    if accessToken == nil {
                        print("AccessToken is not true")
                        return
                    }
                    DispatchQueue.main.async {
                        self.pushMain()
                    }
                }
                
    
            case .failure(let error):
                print(error)
                
            }
        }
        
        
    }
    
    func pushMain() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MainTabBarViewController")
        navigationController?.setViewControllers([vc], animated: true)
    }
    
    
   
}
