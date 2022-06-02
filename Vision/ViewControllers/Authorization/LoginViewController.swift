//
//  LoginViewController.swift
//  RegistrationMenu
//
//  Created by Denys on 07.05.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    var authToken: String?
    @IBOutlet private var email: RoundedTextField!
    @IBOutlet var password: RoundedTextField!
    let textColored: TextColored = TextColored()
    @IBOutlet var signUp: UIButton!
    @IBOutlet var signIn: RoundedButton!
    
    
    
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
        APIServices.makePOSTRequestLogin(urlPostLogin: "https://vision-moiro.herokuapp.com/user/login", email: email, password: password)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MainViewController")
        navigationController?.setViewControllers([vc], animated: true)
    }
    
  
    
    
   
}
