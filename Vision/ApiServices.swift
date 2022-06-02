//
//  ApiService.swift
//  Vision
//
//  Created by Denys on 26.05.2022.
//

import Foundation
import UIKit

final class APIServices: NSObject {

    static func makePOSTRequestLogin(urlPostLogin: String, email: RoundedTextField, password: RoundedTextField ) {
        guard let url = URL (string: urlPostLogin) else {
            return
        }
        print("Making api call to login...")
        var request = URLRequest(url: url)
        // method, body, headers
        request.httpMethod = "POST"
        let body: [String: AnyHashable] = [
            "username": email.text,
            "password": password.text
        ]
        request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)
        var token = ""
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            if (json?["token"] == nil) {
                token = "Wrong password"
            } else {
                token = json?["token"] as! String
            }
            
            print ("SUCCESS: \(token) ")
            
        }
        task.resume()
    }
    
    
    static func makePOSTRequestRegister(urlPostRegister: String, firstName: RoundedTextField, lastName: RoundedTextField, email: RoundedTextField, password: RoundedTextField) {
        guard let url = URL (string: urlPostRegister) else {
            return
        }
        print("Making api call...")
        var request = URLRequest(url: url)
        // method, body, headers
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let body: [String: AnyHashable] = [
            "first_name": firstName.text,
            "last_name": lastName.text,
            "email": email.text,
            "password": password.text
        ]
        request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)
        
        let task = URLSession.shared.dataTask(with: request) {data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let response = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                print ("SUCCESS: \(response) ")
            }
            catch {
                print (error)
            }
        }
        task.resume()
    }
}
