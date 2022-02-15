//
//  Video.swift
//  AfricanAnimals
//
//  Created by Ibrahim Mo Gedami on 13/02/2022.
//

import SwiftUI

// MARK: - Video
struct Video: Codable , Identifiable{
    let id, name, headline: String
    
    // Computed Property
    var thumbnail: String {
      "video-\(id)"
    }
}
