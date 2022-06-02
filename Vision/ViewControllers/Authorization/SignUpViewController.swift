//
//  SignUpViewController.swift
//  RegistrationMenu
//
//  Created by Denys on 07.05.2022.
//

import UIKit
import Moya
class SignUpViewController: UIViewController {
    @IBOutlet var emailTextField: RoundedTextField!
    @IBOutlet var confirmedPasswordTextField: RoundedTextField!
    @IBOutlet var passwordTextField: RoundedTextField!
    @IBOutlet var lastNameTextField: RoundedTextField!
    @IBOutlet var errorLabel: UILabel!
    @IBOutlet var signIn: UIButton!
    @IBOutlet var signUp: RoundedButton!
    @IBOutlet var firstNameTextField: RoundedTextField!
    let textColored: TextColored = TextColored()
    let userProvider =  MoyaProvider<UserService>()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        textColored.changeColor(button: signIn!, quote: "Вже маєте обліковий запис? Увійти", colorText1: UIColor(named: "AppBlack")!, colorText2: UIColor(named: "AppDarkGreen")!, text1: "Вже маєте обліковий запис?", text2: " Увійти", font: UIFont(name: "HelveticaNeue", size: 11.0)!)
        
        errorLabel.alpha = 0
        
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
        
        // Validate the fields
        let error = validateFields()
        
        if error != nil {
            //The is something wrong with the fields, show error massege
            showError(error!)
        }
        else {
            // create the user
            // Transmit to main screen
            
            userProvider.request(.createUser(first_name: firstNameTextField.text!, last_name: lastNameTextField.text!, email: emailTextField.text!, password: passwordTextField.text!)){ result in
                
                switch result {
                case .success(let response):
                    let json = try! JSONSerialization.jsonObject(with: response.data, options: [])
                    print(json)
                    self.signUP()
                case .failure(let error):
                    print(error)
                    
                }
            }
            
            
        }
        
        
    }
    // MARK: - valideteFields
    // Check the fields and validate that the data is correct. If everything ok this methods returns nil. Otherwise it returns the error message
    func validateFields() -> String? {
        
        //check that all fields are filled in
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            confirmedPasswordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Please fill in all fields"
        }
        
        // check if the email is right
        let cleanedEmail = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if  Utilities.isValidEmail(cleanedEmail) == false {
            //the email isn't right
            return "Please make sure your email is right  "
        }
        // check if the password is secure
        
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if  Utilities.isPasswordValid(cleanedPassword) == false {
            //the password isn't secure enough
            return "Please make sure your password is at least 8 charecters, contains a special character and a numbe r  "
        }
        
        // check if the password is the same as confirmed
        if passwordTextField.text != confirmedPasswordTextField.text {
            return "Check the password conformation"
        }
        return nil
    }
    
    // MARK: - sign up func
    func signUP() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MainTabBarViewController")
        navigationController?.setViewControllers([vc], animated: true)
        
    }
    
    @IBAction func signInTapped(_ sender: Any) {
        
    }
    // MARK: - show Error
    func showError(_ message: String) {
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    
}
