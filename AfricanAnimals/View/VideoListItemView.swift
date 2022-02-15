//
//  VideoListItemView.swift
//  AfricanAnimals
//
//  Created by Ibrahim Mo Gedami on 14/02/2022.
//

import SwiftUI

struct VideoListItemView: View {
    
    var video : Video
    
    var body: some View {
        
        HStack(spacing: 10){
            ZStack{
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height : 80)
                    .cornerRadius(9)
                
                Image(systemName: "play.circle")
                  .resizable()
                  .scaledToFit()
                  .frame(height: 32)
                  .shadow(radius: 4)
                
            }//:ZStack
            
            VStack(alignment: .leading,spacing: 10){
                Text(video.name)
                    .foregroundColor(.accentColor)
                    .font(.title2)
                    .fontWeight(.heavy)
                
                Text(video.headline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .font(.footnote)
            }//:VStack
        }//:HStack
    }
}

struct VideoListItemView_Previews: PreviewProvider {
    static var video : [Video] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoListItemView(video: video[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
