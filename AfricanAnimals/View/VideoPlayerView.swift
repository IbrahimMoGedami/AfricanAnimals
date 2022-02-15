//
//  VideoPlayerView.swift
//  AfricanAnimals
//
//  Created by Ibrahim Mo Gedami on 14/02/2022.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSelected: String
    var videoTitle: String
    
    var body: some View {
        NavigationView{
            VStack{
                VideoPlayer(player: VideoPlayerHelper.shared.playVideo(fileName: videoSelected, fileFormat: "mp4")) {}
                .overlay(
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 35)
                        .padding(.top, 6)
                    //                    .padding(.horizontal, 8)
                    ,alignment : .topLeading
                )
            }//:VStack
            .accentColor(.accentColor)
            .navigationBarTitle(videoTitle, displayMode: .inline)
        }
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
