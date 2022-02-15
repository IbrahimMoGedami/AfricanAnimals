//
//  GallaryView.swift
//  AfricanAnimals
//
//  Created by Ibrahim Mo Gedami on 13/02/2022.
//

import SwiftUI

struct GallaryView: View {
    
    let animals : [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    @State private var selectedAnimal: String = "lion"
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
    
    func gridSwitch() {
      gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 30){
                
                /// 'Image'
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(.white,lineWidth: 8))
                
                /// 'Slider'
                Slider(value: $gridColumn, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn) { value in
                        gridSwitch()
                    }
                
                /// 'Grid'
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals){ animal in
                        Image(animal.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .onTapGesture {
                              selectedAnimal = animal.image
                                haptics.impactOccurred()
                            }
                        } //: LOOP
                }//:LazyVGrid
                .animation(.easeIn)
                .onAppear {
                    gridSwitch()
                }
            }//:VStack
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        }//:ScrollView
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

struct GallaryView_Previews: PreviewProvider {
    static var previews: some View {
        GallaryView()
    }
}
