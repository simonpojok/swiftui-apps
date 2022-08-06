//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Simon Peter Ojok on 23/07/2022.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    @Binding var showGuideView: Bool
    @Binding var showInfoView: Bool
    
    var body: some View {
        HStack {
            Button(action: {
                // ACTION
                self.showInfoView.toggle()
            }){
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }.accentColor(Color.primary)
                .sheet(isPresented: $showInfoView) {
                    InfoView()
                }
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
                // ACTION
                self.showGuideView.toggle()
            }) {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }.accentColor(Color.primary)
                .sheet(isPresented: $showGuideView) {
                    GuideView()
                }
        }.padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    @State static var showGuide: Bool = false
    @State static var showInfo: Bool = false
    
    static var previews: some View {
        HeaderView(
            showGuideView: $showGuide,
            showInfoView: $showInfo
        )
            .previewLayout(.fixed(width: 275, height: 80))
    }
}