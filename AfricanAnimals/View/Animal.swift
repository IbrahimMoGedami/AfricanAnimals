//
//  Animal.swift
//  AfricanAnimals
//
//  Created by Ibrahim Mo Gedami on 13/02/2022.
//

import SwiftUI

// MARK: - Animal
struct Animal: Codable , Identifiable{
    let id, name, headline, animalDescription: String
    let link: String
    let image: String
    let gallery, fact: [String]

    enum CodingKeys: String, CodingKey {
        case id, name, headline
        case animalDescription = "description"
        case link, image, gallery, fact
    }
}

//typealias AnimalData = [Animal]
