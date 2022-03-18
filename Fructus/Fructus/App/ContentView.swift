//
//  ContentView.swift
//  Fructus
//
//  Created by Simon Peter Ojok on 13/03/2022.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    
    @State private var isShowingSettings: Bool = false
    @AppStorage("isOnBoarding") private var isOnBoarding: Bool = false
    
    var body: some View {
        if (isOnBoarding) {
            OnboardingView()
        } else {
            NavigationView {
                List {
                    ForEach(fruits.shuffled()) { item in
                        NavigationLink(destination: FruitDetailView(fruit: item)){
                            FruitRowView(fruit: item)
                                .padding(.vertical, 4)
                        }
                    }
                }
                .navigationTitle("Fruits")
                .navigationBarItems(trailing: Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                }
                ).sheet(isPresented: $isShowingSettings, onDismiss: {
                    isShowingSettings = false
                }) { SettingsView() }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
