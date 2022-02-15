//
//  AnimalDetailView.swift
//  AfricanAnimals
//
//  Created by Ibrahim Mo Gedami on 14/02/2022.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: Animal
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                //Image
                Image(animal.image)
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(8)
                    .padding()
                
                //Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                        .frame(height: 6)
                            .offset(y: 24))
                    .padding()
                
                    //Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                //Gallary
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                // FACTS
                Group {
                  HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                  
                  InsetFactView(animal: animal)
                }
                
                .padding(.horizontal)
                
                // DESCRIPTION
                Group {
                  HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                  
                    Text(animal.animalDescription)
                      .multilineTextAlignment(.leading)
                      .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // MAP
                Group {
                  HeadingView(headingImage: "map", headingText: "National Parks")
                  InsetMapView()
                }
                .padding(.horizontal)
                
                // LINK
                Group {
                  HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    ExternalWeblinkView(animal: animal)
                }
                .padding(.horizontal)
                
            }//:VStack
            .navigationBarTitle("learn about \(animal.name)",displayMode: .inline)
        }//:ScrollView
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    
    static let animal : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalDetailView(animal: animal[0])
    }
}
