//
//  VideoListView.swift
//  Africa
//
//  Created by Simon Peter Ojok on 20/03/2022.
//

import SwiftUI

struct VideoListView: View {
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    let hepticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(
                        destination: VideoPlayerView(
                            videoSelected: item.id,
                            videoTitle: item.name
                        )
                    ) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
                .navigationBarTitle("Videos", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            videos.shuffle()
                            hepticImpact.impactOccurred()
                        }) {
                            Image(systemName: "arrow.2.squarepath")
                        }
                    }
                }
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
