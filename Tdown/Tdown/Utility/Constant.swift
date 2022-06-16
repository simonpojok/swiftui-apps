//
//  Constant.swift
//  Tdown
//
//  Created by Simon Peter Ojok on 31/05/2022.
//

import SwiftUI

// DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")

// COLOR

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
// UX
// API
// IMAGE
// FONT
// STRING
// MISC
