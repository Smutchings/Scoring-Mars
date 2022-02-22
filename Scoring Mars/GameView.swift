//
//  NewGame.swift
//  Scoring Mars
//
//  Created by Sam Hutchings on 01/02/2022.
//

import SwiftUI

enum Map: String, CaseIterable, Identifiable{
  case Tharsis, Hellas, Elysium
  var id: Self { self }
}

enum Expansion: String, CaseIterable, Identifiable{
  case CorporateEra, Prelude, VenusNext, Colonies, Turmoil, Promos
  var id: Self { self }
}

var players: [String] = ["Kev", "Dave", "Sam", "Tim"]
var showAddNewPlayer: Bool = false

func addPlayer() {
  showAddNewPlayer = true
}

struct GameView: View {
  
  @State private var selectedMap : Map = .Tharsis
  
  var body: some View {
    
    VStack {
      Text("Game #155")
      Form {
        
        Section(header: Text("Map")) {
          
          Picker("Game map", selection: $selectedMap) {
            Text("Tharsis").tag(Map.Tharsis)
            Text("Hellas").tag(Map.Hellas)
            Text("Elysium").tag(Map.Elysium)
          }
          
        }
        
        Section(header: Text("Players")) {
          
          ForEach(players, id: \.self) { player in
            
            NavigationLink(destination: PlayerView()) {
              Label {
                Text("\(player)")
                
              } icon: {
                Image(systemName: "person.fill")
                  .foregroundColor(Color.red)
              }
              .badge(15)
            }
          }
          
          if players.count < 5 {
            
            Button(action: addPlayer) {
              Label("Add player", systemImage: "person.fill.badge.plus")
            }
          }
          
        }
        
        Section(header: Text("Expansions")) {
          List {
            ForEach(Expansion.allCases, id: \.self) { expansion in
              
              Label {
                Text("\(expansion.rawValue)")
                
              } icon: {
                Image("\(expansion)")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
              }
            }
          }
        }
      }
    }
  }
  
  
  struct NewGame_Previews: PreviewProvider {
    static var previews: some View {
      GameView()
    }
  }
}
