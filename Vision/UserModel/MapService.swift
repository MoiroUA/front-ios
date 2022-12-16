//
//  MapService.swift
//  Vision
//
//  Created by Denys on 12/16/22.
//

import Foundation
import Moya
import SwiftKeychainWrapper
import UIKit
enum MapService {
    case readMap
}

extension MapService: TargetType {
    
    
    var baseURL: URL {
        return URL(string: "http://vision.eu-central-1.elasticbeanstalk.com")!
    }
    
    
    var path: String {
        switch self {
        case .readMap:
            return "/areas"
        }
    }
    var method: Moya.Method {
        switch self {
        case .readMap:
            return .get
        }
    }
    var sampleData: Data {
        switch self {
        case.readMap:
            return Data()
        }
    }
    
    var task: Task {
        switch self {
        case .readMap:
            return .requestPlain
        
        }
    }
    
    var headers: [String: String]? {
        switch self {
        case .readMap:
            return ["Content-Type" : "application/json"]
        }
   
    }

    
}
