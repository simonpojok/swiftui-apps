//
//  ContentView.swift
//  Honeymoon
//
//  Created by Simon Peter Ojok on 23/07/2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var showAlert: Bool = false
    @State private var showGuide : Bool = false
    @State private var showInfo : Bool = false
    
    // MARK: - CARD VIEWS
    
    var cardViews: [CardView] = {
        var views = [CardView]()
        for index in 0..<2 {
            views.append(CardView(honeymoon: honeymoonData[index]))
        }
        return views
    }()
    
    // MARK: - TOP CARD
    private func isTopCard(cardView: CardView) -> Bool {
        guard let index = cardViews.firstIndex(where: {$0.id == cardView.id }) else { return false}
        return index == 0
    }
    
    var body: some View {
        VStack {
            // MARK: - HEADERs
            HeaderView(
                showGuideView: $showGuide,
                showInfoView: $showInfo
            )
            Spacer()
            
            // MARK: - CARD
            ZStack {
                ForEach(cardViews) { cardView in
                    cardView
                        .zIndex(self.isTopCard(cardView: cardView) ? 1 : 0)
                }
            }.padding(.horizontal)
            
            Spacer()
            
            // MARK: - FOOTER
            FooterView(
                showBookingAlert: $showAlert
            )
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("SUCCESS"),
                message: Text("Wishing a lovely and most precious of the times together for the amazing couple."),
                dismissButton: .default(Text("Happy Honeymoon!"))
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
