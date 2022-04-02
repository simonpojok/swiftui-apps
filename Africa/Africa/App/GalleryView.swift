//
//  GalleryView.swift
//  Africa
//
//  Created by Simon Peter Ojok on 20/03/2022.
//

import SwiftUI

struct GalleryView: View {
    @State private var selectedAnimal: String = "lion"
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
//
//    let gridLayout: [GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//    ]
    
//    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColum: Double = 3.0
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColum))
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            Image(selectedAnimal)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke(.white, lineWidth: 8))
            
            Slider(value: $gridColum, in: 2...4, step: 1)
                .padding(.horizontal)
                .onChange(of: gridColum) { value in
                    gridSwitch()
                }
            
            VStack(alignment: .center, spacing: 30) {
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(.white, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = item.image
                            }
                    }
                }.onAppear {
                    gridSwitch()
                }.animation(.easeIn, value: gridColum)
            }
            .padding(.vertical, 50)
            .padding(.horizontal, 10)
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
