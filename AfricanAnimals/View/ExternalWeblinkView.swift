//
//  ExternalWeblinkView.swift
//  AfricanAnimals
//
//  Created by Ibrahim Mo Gedami on 14/02/2022.
//

import SwiftUI

struct ExternalWeblinkView: View {
    
    var animal : Animal
    
    var body: some View {
        GroupBox {
            HStack{
                Group{
                    Image(systemName: "globe")
                    Text("Wikipedia")
                }//:Group
                
                Spacer()
                
                Group {
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                    Image(systemName: "arrow.up.right.square")
                }//:Group
                .foregroundColor(.accentColor)
            }//:HStack
        }//:GroupBox
        
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static var animal : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWeblinkView(animal: animal[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
