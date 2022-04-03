//
//  CenterModifier.swift
//  Africa
//
//  Created by Simon Peter Ojok on 03/04/2022.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
    
    
}
