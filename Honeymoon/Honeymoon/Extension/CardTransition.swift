//
//  CardTransition.swift
//  Honeymoon
//
//  Created by Simon Peter Ojok on 06/08/2022.
//

import SwiftUI

extension AnyTransition {
    static var trailingBottom: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .identity,
            removal: AnyTransition.move(edge: .trailing)
                .combined(with: .move(edge: .bottom))
        )
    }
    
    static var leadingBottom:  AnyTransition {
        AnyTransition.asymmetric(
            insertion: .identity,
            removal: AnyTransition.move(edge: .leading)
                .combined(with: .move(edge: .bottom))
        )
    }
}
