//
//  PlayerView.swift
//  Scoring Mars
//
//  Created by Sam Hutchings on 01/02/2022.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
      NavigationView {
        VStack {
          
          List {
            Text("Name")
            Text("Colour")
            Text("Corporation")
          }
          
        }
        .navigationTitle("Player Name")
        .navigationBarTitleDisplayMode(.inline)
      }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
