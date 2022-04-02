//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Simon Peter Ojok on 02/04/2022.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let videoSelected: String
    let videoTitle: String
    
    var body: some View {
        VStack {
            VideoPlayer(
                player: playVideo(
                    fileName: videoSelected,
                    fileFromat: "mp4"
                )
            ) {
                
            }.overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8),
                alignment: .topLeading
            )
        }.accentColor(.accentColor)
            .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(
                videoSelected: "lion",
                videoTitle: "Lion"
            )
        }
    }
}
