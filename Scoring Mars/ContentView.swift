//
//  ContentView.swift
//  Scoring Mars
//
//  Created by Sam Hutchings on 01/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
      NavigationView {
        VStack {
          
          Form {
            Section(header: Text("Score a New Game")) {
              Button(action: addPlayer) {
                Label("New Game", systemImage: "plus.circle.fill")
              }
            }
            
            Section(header: Text("Game History")) {
              
              NavigationLink(destination: GameView()) {
                Label {
                  Text("Game #155")
                  
                } icon: {
                  Image(systemName: "globe")
                }
                .badge("04/10/1989")
              }
              
            }
          }
          .listStyle(.insetGrouped)
          
        }
        .navigationTitle("Scoring Mars")
        
      }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
