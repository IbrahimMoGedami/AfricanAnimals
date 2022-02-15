//
//  AnimalListView.swift
//  AfricanAnimals
//
//  Created by Ibrahim Mo Gedami on 13/02/2022.
//

import SwiftUI

struct AnimalListView: View {
    
    let animal: Animal
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack (alignment: .leading, spacing: 8){
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing,8)
            }//:VStack
        }//:HStack
    }
}

struct AnimalListView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        
        AnimalListView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
