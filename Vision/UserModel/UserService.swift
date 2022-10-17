////
////  UserService.swift
////  MoyaApiConnection
////
////  Created by Denys on 02.06.2022.
////
//
//import Foundation
//import Moya
//import SwiftKeychainWrapper
//import UIKit
//enum UserService {
//    case createUser(first_name: String, last_name: String, email: String, password: String)
//    case loginUser(username: String, password: String)
//    case readUsers
//    case updateUser(email: String, password: String, phoneNumber: String)
//    case deleteUser(email: String)
//}
//
//extension UserService: TargetType {
//    
//    
//    var baseURL: URL {
//        return URL(string: "https://vision-moiro.herokuapp.com/user")!
//    }
//    
//    var path: String {
//        switch self {
//        case .createUser(_, _, _, _):
//            return "/registration"
//        case .loginUser(_, _):
//            return "/login"
//        case .updateUser(let email, _, _), .deleteUser(let email):
//            return "/soon/ \(email)"
//        case .readUsers:
//            return "/profile"
//        }
//    }
//    var method: Moya.Method {
//        switch self {
//        case .createUser(_, _, _, _):
//            return .post
//        case .loginUser(_, _):
//            return .post
//        case .readUsers:
//            return .get
//        case .updateUser( _, _, _ ):
//            return .put
//        case .deleteUser(_):
//            return .delete
//        }
//    }
//    var sampleData: Data {
//        switch self {
//        case .createUser (let first_name, let last_name, let email, let password):
//            return "{'firstName':'\(first_name)', 'lastName':'\(last_name)','email':'\(email)', 'password':'\(password)'}".data(using: .utf8)!
//        case .loginUser (let username, let password):
//            return "{'username':'\(username)', 'password':'\(password)'}".data(using: .utf8)!
//        case.readUsers:
//            return Data()
//        case .updateUser(let email, let password, let phoneNumber):
//            return "{'email':'\(email)', 'password':'\(password)','phoneNumber':'\(phoneNumber)'}".data(using: .utf8)!
//        case .deleteUser(let email):
//            return "{'email':'\(email)'}".data(using: .utf8)!
//        }
//    }
//    
//    var task: Task {
//        switch self {
//        case .readUsers, .deleteUser(_):
//            return .requestPlain
//        case .createUser(let first_name, let last_name, let email, let password):
//            return .requestParameters (parameters: [
//                "first_name": first_name,
//                "last_name": last_name,
//                "email": email,
//                "password": password
//            ], encoding: JSONEncoding.default)
//        case .loginUser(let username, let password):
//            return .requestParameters (parameters: [
//                "username": username,
//                "password": password
//            ], encoding: JSONEncoding.default)
//        case .updateUser(let email, let password, let phoneNumber):
//            return .requestParameters (parameters: [
//                "email": email,
//                "password": password,
//                "phone_number": phoneNumber,
//                
//            ], encoding: JSONEncoding.default)
//        }
//    }
//    
//    var headers: [String: String]? {
//        
//        switch self {
//        case .createUser(let first_name, let last_name, let email, let password):
//            return ["Content-Type" : "application/json"]
//        case .loginUser(let username, let password):
//            let accessToken: String? = KeychainWrapper.standard.string(forKey: "accessToken")
//            return ["Content-Type" : "application/json"]
//        case .readUsers:
//            let accessToken: String? = KeychainWrapper.standard.string(forKey: "accessToken")
//            return ["Authorization": "Token \(accessToken!)"]
//        case .updateUser(let email, let password, let phoneNumber):
//            let accessToken: String? = KeychainWrapper.standard.string(forKey: "accessToken")
//            return ["Authorization": "Token \(accessToken!)"]
//        case .deleteUser(let email):
//            let accessToken: String? = KeychainWrapper.standard.string(forKey: "accessToken")
//            return ["Authorization": "Token \(accessToken!)"]
//        }
//   
//    }
//
//    
//}
