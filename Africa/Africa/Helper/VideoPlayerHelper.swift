//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Simon Peter Ojok on 02/04/2022.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFromat: String) -> AVPlayer {
    let url = Bundle.main.url(forResource: fileName, withExtension: fileFromat)
    if (url != nil) {
        videoPlayer = AVPlayer(url: url!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
