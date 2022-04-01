//
//  VideoModel.swift
//  Africa
//
//  Created by Simon Peter Ojok on 01/04/2022.
//

import Foundation


struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        return "video-\(id)"
    }
}

