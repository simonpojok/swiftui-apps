//
//  StartButtonView.swift
//  Fructus
//
//  Created by Simon Peter Ojok on 13/03/2022.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button(action: {
            print("Exit the onboarding")
        }) {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }.padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(Capsule().strokeBorder(.white, lineWidth: 1.25))
        }
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
