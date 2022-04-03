//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Simon Peter Ojok on 03/04/2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
