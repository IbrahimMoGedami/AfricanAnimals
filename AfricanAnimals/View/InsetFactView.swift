//
//  InsetFactView.swift
//  AfricanAnimals
//
//  Created by Ibrahim Mo Gedami on 14/02/2022.
//

import SwiftUI

struct InsetFactView: View {
    
    let animal : Animal
    
    var body: some View {
        GroupBox{
            TabView{
                ForEach(animal.fact , id : \.self){ item in
                    Text(item)
                }
            }//:TabView
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//:GroupBox
    }
}

struct InsetFactView_Previews: PreviewProvider {
    
    static var animal  : [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animal[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
