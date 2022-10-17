//
//  SignUpNameEmailViewController.swift
//  Vision
//
//  Created by Denys on 25.08.2022.
//

import UIKit
import Moya
class SignUpNameEmailViewController: UIViewController {
    
    @IBOutlet var firstNameTextField: RoundedTextField!
    @IBOutlet var lastNameTextField: RoundedTextField!
    @IBOutlet var emailTextField: RoundedTextField!
    @IBOutlet var signIn: UIButton!
    @IBOutlet var errorLabel: UILabel!
    @IBOutlet var continueAccountCreation: RoundedButton!
    let textColored: TextColored = TextColored()
    @IBAction func continueAccountCreationTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "signUpPassword") as! SignUpPasswordCreationViewController
        vc.firstName = firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        vc.lastName = lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        vc.email = emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        navigationController!.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        textColored.changeColor(button: signIn!, quote: "Вже маєте обліковий запис? Увійти", colorText1: UIColor(named: "AppBlack")!, colorText2: UIColor(named: "AppDarkGreen")!, text1: "Вже маєте обліковий запис?", text2: " Увійти", font: UIFont(name: "HelveticaNeue", size: 11.0)!)
        
        errorLabel.alpha = 0
        
        let error = validateFields()
        
        if error != nil {
            //The is something wrong with the fields, show error massege
            showError(error!)
        }
        
    }
    
    func validateFields() -> String? {
        
        //check that all fields are filled in
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Please fill in all fields"
        }
        
        // check if the email is right
        let cleanedEmail = emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if  Utilities.isValidEmail(cleanedEmail!) == false {
            //the email isn't right
            return "Please make sure your email is right  "
        }
      
        return nil
    }
    // MARK: - show Error
    func showError(_ message: String) {
        errorLabel.text = message
        errorLabel.alpha = 1
    }
}
