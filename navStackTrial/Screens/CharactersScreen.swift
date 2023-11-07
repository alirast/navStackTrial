//
//  CharactersScreen.swift
//  navStackTrial
//
//  Created by N S on 07.11.2023.
//

import SwiftUI

struct CharactersScreen: View {
  
  @Binding var mainStack: [NavigationType]
  
  var body: some View {
    VStack {
      Text("people view")
      
      Button {
        mainStack.append(.location)
      } label: {
        Text("go to location")
      }

    }
  }
}
