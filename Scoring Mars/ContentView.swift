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
          
          List {
            Section(header: Text("Start New Game")) {
              Button(action: addPlayer) {
                Label("New Game", systemImage: "plus.circle.fill")
              }
            }
            
            Section(header: Text("Game History")) {
              
              NavigationLink(destination: PlayerView()) {
                Label {
                  Text("Game #154")
                  
                } icon: {
                  Image(systemName: "globe")
                }
                .badge("x players")
              }
              
            }
          }
          .listStyle(.insetGrouped)
          
          Text("Start New Game")
          
          // button goes here
          
          Text("Play History")
          
          // play history list goes here
          
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
