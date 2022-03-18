//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Simon Peter Ojok on 18/03/2022.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Simon P Ojok")
                .previewLayout(.fixed(width: 275, height: 60))
            .padding()
            
            SettingsRowView(name: "Website", linkLabel: "Developer Website", linkDestination: "www.lukwan.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 275, height: 60))
                .padding()
        }
    }
}
