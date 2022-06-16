//
//  CategoryGrideView.swift
//  Tdown
//
//  Created by Simon Peter Ojok on 03/06/2022.
//

import SwiftUI

struct CategoryGrideView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []){
                
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
                
            }.frame(height: 140)
                .padding(.horizontal, 15)
                .padding(.vertical, 10)
        }
    }
}

struct CategoryGrideView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGrideView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
