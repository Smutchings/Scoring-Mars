//
//  PlayerView.swift
//  Scoring Mars
//
//  Created by Sam Hutchings on 01/02/2022.
//

import SwiftUI

enum PlayerColour: String, CaseIterable, Identifiable{
  case black, blue, red, green, yellow
  var id: Self { self }
}

struct PlayerView: View {
  
  @State private var playerColour: PlayerColour = .black
  @State private var playerName: String = ""
  
  var body: some View {
      
      NavigationView {
        VStack {
          
          Form {
            TextField("Name", text: $playerName)
            Picker("Colour", selection: $playerColour) {
              
              HStack {
                Image(systemName: "square.fill")
                  .foregroundColor(.black)
                Text("Black")
              }.tag(PlayerColour.black)
              HStack {
                Image(systemName: "square.fill")
                  .foregroundColor(.blue)
                Text("Blue")
              }.tag(PlayerColour.blue)
              HStack {
                Image(systemName: "square.fill")
                  .foregroundColor(.green)
                Text("Green")
              }.tag(PlayerColour.green)
              HStack {
                Image(systemName: "square.fill")
                  .foregroundColor(.red)
                Text("Red")
              }.tag(PlayerColour.red)
              HStack {
                Image(systemName: "square.fill")
                  .foregroundColor(.yellow)
                Text("Yellow")
              }.tag(PlayerColour.yellow)
            }
            Text("Corporation")
          }
          
        }
        .navigationTitle("Player Name Goes Here")
        .navigationBarTitleDisplayMode(.inline)
      }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
      PlayerView()
    }
}
