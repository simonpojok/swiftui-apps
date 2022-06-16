//
//  FeaturedTabView.swift
//  Tdown
//
//  Created by Simon Peter Ojok on 03/06/2022.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }  //: END - TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 12 Pro")
            .background(.gray)
    }
}
