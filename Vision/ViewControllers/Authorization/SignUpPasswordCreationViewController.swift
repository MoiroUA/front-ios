//
//  SignUpPasswordCreationViewController.swift
//  Vision
//
//  Created by Denys on 25.08.2022.
//

import UIKit
import Moya
class SignUpPasswordCreationViewController: UIViewController {
    @IBOutlet var confirmedPasswordTextField: RoundedTextField!
    @IBOutlet var passwordTextField: RoundedTextField!
    @IBOutlet var errorLabel: UILabel!
    @IBOutlet var signIn: UIButton!
    @IBOutlet var signUp: RoundedButton!
    var firstName: String!
    var lastName: String!
    var email: String!
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
            
            userProvider.request(.createUser(first_name: firstName!, last_name: lastName!, email: email!, password: passwordTextField.text!)){ result in
                
                switch result {
                case .success(let response):
                        self.signIN()
                case .failure(let error):
                    print(error)
                    
                }
            }

        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: - valideteFields
    // Check the fields and validate that the data is correct. If everything ok this methods returns nil. Otherwise it returns the error message
    func validateFields() -> String? {
        
        //check that all fields are filled in
        if email == "" ||
            lastName == "" ||
            email == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            confirmedPasswordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Please fill in all fields"
        }
        
        // check if the email is right
        let cleanedEmail = email!
        
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
func signIN() {
    let scenes = UIApplication.shared.connectedScenes
    let windowScene = scenes.first as? UIWindowScene
    let window = windowScene?.windows.first
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let sign = storyboard.instantiateViewController(withIdentifier: "signIn")
    window?.rootViewController = sign
}
// MARK: - show Error
func showError(_ message: String) {
    errorLabel.text = message
    errorLabel.alpha = 1
}

}
