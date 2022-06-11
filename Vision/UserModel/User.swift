//
//  User.swift
//  MoyaApiConnection
//
//  Created by Denys on 02.06.2022.
//

import Foundation
import Moya

struct User: Decodable {
    private(set) var first_name: String
    private(set) var last_name: String
    private(set) var email: String
    private(set) var password: String
}
