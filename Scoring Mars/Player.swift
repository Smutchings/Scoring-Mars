//
//  Player.swift
//  Scoring Mars
//
//  Created by Sam Hutchings on 01/02/2022.
//

import Foundation

struct Player: Identifiable {
  let id : UUID = UUID()
  let name : String
  var playerScore : Int = 5
  var playerColour : String
  var milestonesEarned : [String] = []
  var awardsEarned : [String] = []
  
  mutating func changePlayerColour(colour: String) {
    playerColour = colour
  }
}
