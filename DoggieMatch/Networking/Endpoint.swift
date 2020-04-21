//
//  Endpoint.swift
//  DoggieMatch
//
//  Created by Alexis Orellano on 4/14/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

protocol Endpoint {
    var base: URL { get }
    var path: String { get }
    var queryItems: [URLQueryItem] { get }
}

extension Endpoint {
    var apiKey: String {
        return "bhaOWHD9"
    }
    
    var urlComponents: URLComponents {
        let baseUrl = base.appendingPathComponent(path)
        var components = URLComponents(url: baseUrl, resolvingAgainstBaseURL: true)!
        components.queryItems = queryItems
        return components
    }
    
    var request: URLRequest {
        let url = urlComponents.url!
        return URLRequest(url: url)
    }
}

enum Shelter {
    case searchAnimal(breed: String)
}

extension Shelter: Endpoint {
    var base: URL {
        return URL(string: "https://www.petrescue.com.au")!
    }
    
    var path: String {
        switch self {
        case .searchAnimal: return "/listings"
        }
    }

    var queryItems: [URLQueryItem] {
        switch self {
        case .searchAnimal(let breed):
            return [
                URLQueryItem(name: "token", value: apiKey),
                URLQueryItem(name: "breed", value: breed)
            ]
        }
    }
}
