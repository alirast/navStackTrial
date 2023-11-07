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
        
        VStack {
          Text("Episodes screen")
          Button {
            mainStack.append(.characters)
          } label: {
            Text("go to characters")
          }

        }
          .navigationTitle("Episodes screen")
          .navigationBarTitleDisplayMode(.inline)

          .navigationDestination(for: NavigationType.self) { screen in
            switch screen {
            case .characters:
              VStack {
                Text("people view")
                Button {
                  mainStack.append(.location)
                } label: {
                  Text("go to location")
                }

              }
              
            case .location:
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
      }
    }
}

#Preview {
    ContentView()
}
