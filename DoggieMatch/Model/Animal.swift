//
//  Animal.swift
//  DoggieMatch
//
//  Created by Alexis Orellano on 4/14/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

struct Animal {
    let id: Int
    let organization: String
    let type: String
    let species: String
    let breed: Breed
    let colors: Colors
    let age: String
    let gender: String
    let size: String
    let coat: String
    let attributes: Attributes
    let enviroment: Enviroment
    let tags: [String]
    let name: String
    let description: String
    let photos: [Photo]
    let videos: [Video]
    let status: String
    let contact: Contact
    let published: String
    let distance: Double
}

struct Breed {
    let primary: String
    let secondary: String
    let mixed: Bool
    let unknown: Bool
}

struct Colors {
    let primary: String
    let secondary: String
    let tertiary: String
}

struct Attributes {
    let spayedNeutered: Bool
    let houseTrained: Bool
    let declawed: Bool
    let specialNeeds: Bool
    let shotsCurrent: Bool
}

struct Enviroment {
    let children: Bool
    let dogs: Bool
    let cats: Bool
}

struct Video {
    let embed: String
}

struct Contact {
    let email: String
    let phone: String
    let address: Address
}




