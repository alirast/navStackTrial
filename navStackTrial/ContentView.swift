//
//  ContentView.swift
//  navStackTrial
//
//  Created by N S on 07.11.2023.
//

import SwiftUI

enum NavigationType: String, Hashable {
  case characters = "people"
  case location = "location"
}

struct ContentView: View {
  
  @State private var mainStack: [NavigationType] = []
  
    var body: some View {
      NavigationStack(path: $mainStack) {
        
        EpisodesScreen(mainStack: $mainStack)
          .navigationTitle("Episodes aka home screen")
          .navigationBarTitleDisplayMode(.inline)

          .navigationDestination(for: NavigationType.self) { screen in
            switch screen {
            case .characters:
              CharactersScreen(mainStack: $mainStack)
              
            case .location:
              LocationScreen(mainStack: $mainStack)
            }
          }
      }
    }
}

#Preview {
    ContentView()
}
