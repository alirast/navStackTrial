//
//  LocationScreen.swift
//  navStackTrial
//
//  Created by N S on 07.11.2023.
//

import SwiftUI

struct LocationScreen: View {
  
  @Binding var mainStack: [NavigationType]
  
    var body: some View {
      VStack {
        Text("Location view")
        
        Button {
          mainStack.removeAll()
        } label: {
          Text("go to root")
        }
      }

    }
}


