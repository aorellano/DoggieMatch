//
//  APIClient.swift
//  DoggieMatch
//
//  Created by Alexis Orellano on 4/20/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

enum APIError: Error {
    case requestFailed
    case jsonConversionFailure
    case invalidData
    case responseUnsuccessful
    case jsonParsingFailure
    
    var localizedDescription: String {
        switch self {
        case .requestFailed: return "Request Failed"
        case .jsonConversionFailure: return "JSON Conversion Failure"
        case .invalidData: return "Invalid Data"
        case .responseUnsuccessful: return "Response Unsuccessful"
        case .jsonParsingFailure: return "JSON Parsing Failure"
        }
    }
}
