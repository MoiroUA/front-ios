//
//  OTPViewController.swift
//  Vision
//
//  Created by Denys on 07.08.2022.
//

import UIKit

class OTPViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var submitBt: RoundedButton!
    @IBOutlet var txtOTP4: UITextField!
    @IBOutlet var txtOTP3: UITextField!
    @IBOutlet var txtOTP2: UITextField!
    @IBOutlet var txtOTP1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtOTP1.delegate = self
        txtOTP2.delegate = self
        txtOTP3.delegate = self
        txtOTP4.delegate = self
        
        txtOTP1.becomeFirstResponder()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if ((textField.text?.count)! < 1) &&  (string.count > 0) {
            if textField == txtOTP1 {
                txtOTP2.becomeFirstResponder()
            }
            if textField == txtOTP2 {
                txtOTP3.becomeFirstResponder()
            }
            if textField == txtOTP3 {
                txtOTP4.becomeFirstResponder()
            }
            if textField == txtOTP4 {
                txtOTP4.becomeFirstResponder()
            }
            textField.text = string
            return false
        } else if((textField.text?.count)! >= 1) &&  (string.count == 0) {
            
            if textField == txtOTP2 {
                txtOTP1.becomeFirstResponder()
            }
            if textField == txtOTP3 {
                txtOTP2.becomeFirstResponder()
            }
            if textField == txtOTP4 {
                txtOTP3.becomeFirstResponder()
            }
            if textField == txtOTP4 {
                txtOTP4.becomeFirstResponder()
            }
            textField.text = ""
            return false
        } else if (textField.text?.count)! >= 1 {
            textField.text = string
            return false
        }
        return true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
