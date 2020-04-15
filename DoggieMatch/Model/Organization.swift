//
//  Organization.swift
//  DoggieMatch
//
//  Created by Alexis Orellano on 4/14/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

struct Organization {
    let id: String
    let name: String
    let email: String
    let phone: String
    let address: Address
    let hours: Hours
    let url: String
    let website: String
    let mission_statement: String
    let adoption: Adoption
    let socialMedia: Media
    let distance: String
}

struct Hours {
    let monday: String
    let tuesday: String
    let wednesday: String
    let thursday: String
    let friday: String
    let saturday: String
    let sunday: String
}

struct Adoption {
    let policy: String
    let url: String
}

struct Media {
    let facebook: String
    let twitter: String
    let youtube: String
    let instagram: String
    let pinterest: String
}
