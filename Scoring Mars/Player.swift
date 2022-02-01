//
//  Player.swift
//  Scoring Mars
//
//  Created by Sam Hutchings on 01/02/2022.
//

import Foundation

struct Player: Identifiable {
  let id : UUID = UUID()
  var name : String = ""
  var score : Int = 5
  var playerColour : String = ""
  var milestonesEarned : [String] = []
  var awardsEarned : [String] = []
}
