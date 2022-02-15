//
//  Modifiers.swift
//  AfricanAnimals
//
//  Created by Ibrahim Mo Gedami on 15/02/2022.
//

import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    }
  }
}
