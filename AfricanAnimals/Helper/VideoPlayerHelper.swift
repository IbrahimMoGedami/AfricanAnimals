//
//  VideoPlayerHelper.swift
//  AfricanAnimals
//
//  Created by Ibrahim Mo Gedami on 14/02/2022.
//

import Foundation
import AVKit

class VideoPlayerHelper{
    
    private init(){}
    
    static let shared = VideoPlayerHelper()
    var videoPlayer: AVPlayer?
    
    func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
      if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
      }
      return videoPlayer!
    }
}
