//
//  EpisodesScreen.swift
//  navStackTrial
//
//  Created by N S on 07.11.2023.
//

import SwiftUI

struct EpisodesScreen: View {
  
  @State private var episodes: [EpisodeModel] = []
  @Binding var mainStack: [NavigationType]
  
    var body: some View {
      VStack {
        Text("Episodes screen")
        
        Button {
          mainStack.append(.characters)
        } label: {
          Text("go to characters")
        }
      }
    }
}


