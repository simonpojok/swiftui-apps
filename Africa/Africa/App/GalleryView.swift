//
//  GalleryView.swift
//  Africa
//
//  Created by Simon Peter Ojok on 20/03/2022.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Gallery")
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        ).background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
