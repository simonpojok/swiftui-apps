//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Simon Peter Ojok on 24/07/2022.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}
