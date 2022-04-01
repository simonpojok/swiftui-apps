//
//  ExternalWebLinkiew.swift
//  Africa
//
//  Created by Simon Peter Ojok on 01/04/2022.
//

import SwiftUI

struct ExternalWebLinkiew: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Group {
                    Image(systemName: "arrow.up.right.square")
                    Spacer()
                    Link(
                        animal.name,
                        destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!
                    )
                }.foregroundColor(.accentColor)
                
            }
        }
    }
}

struct ExternalWebLinkiew_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWebLinkiew(
        animal: animals[0]
        )
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
