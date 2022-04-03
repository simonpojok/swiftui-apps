//
//  Constants.swift
//  TouchDown
//
//  Created by Simon Peter Ojok on 03/04/2022.
//

import SwiftUI

// DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")

// COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// LAYOUT
//let columnSpacing: CGFont = 10
//let rowSpacing: CGFont = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: 10), count: 2)
}
// UX
// API
// IMAGE
// FONT
// STRING
// MISC
