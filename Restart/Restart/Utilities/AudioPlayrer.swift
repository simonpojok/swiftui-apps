//
//  AudioPlayrer.swift
//  Restart
//
//  Created by Simon Peter Ojok on 17/02/2022.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could Play the sound file")
        }
    }
}
