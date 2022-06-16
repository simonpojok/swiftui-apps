//
//  ContentView.swift
//  Tdown
//
//  Created by Simon Peter Ojok on 31/05/2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(height: 300)
                            .padding(.vertical, 20)
                        
                        CategoryGrideView()
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                }
                
            }.background(colorBackground.ignoresSafeArea(edges: .all))
            
        }.ignoresSafeArea(edges: .top)
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
