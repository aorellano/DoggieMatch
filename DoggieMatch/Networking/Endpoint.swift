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
        return "jV9VjUqDrsQQI1Tc6x7fSdOAJThrSpTpmeAEkjFRvYq0OzRJfD"
    }
    
    var urlComponents: URLComponents {
        let baseUrl = base.appendingPathComponent(path)
        var components = URLComponents(url: baseUrl, resolvingAgainstBaseURL: true)!
        components.queryItems = [
            URLQueryItem(name: "api_key", value: apiKey)
        ]
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
    var base: String {
        return "https://api.petfinder.com/v2"
    }
    
    var path: String {
        switch self {
        case .searchAnimal: return "/animals"
        }
    }
    
    var queryItems: [URLQueryItem] {
        switch self {
        case .searchAnimal(let breed):
            return [
                URLQueryItem(name: "breed", value: breed)
            ]
        }
    }
}
