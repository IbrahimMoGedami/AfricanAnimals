//
//  MapAnnotationView.swift
//  AfricanAnimals
//
//  Created by Ibrahim Mo Gedami on 14/02/2022.
//

import SwiftUI
import MapKit

struct MapAnnotationView: View {
    
    var location : Location
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack{
            Circle()
                .fill(Color.accentColor)
                .frame(width: 55, height: 55, alignment: .center)
            
            Circle()
                .stroke(Color.accentColor , lineWidth: 2)
                .frame(width: 53, height: 53, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
              .resizable()
              .scaledToFit()
              .frame(width: 49, height: 49, alignment: .center)
              .clipShape(Circle())
        }//:ZStack
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2)
                            .repeatForever(autoreverses: false)){
                animation = 1
            }
        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static var locations : [Location] = Bundle.main.decode("locations.json")
    static var previews: some View {
        MapAnnotationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
