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
