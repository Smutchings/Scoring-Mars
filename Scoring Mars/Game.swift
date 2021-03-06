//
//  Game.swift
//  Scoring Mars
//
//  Created by Sam Hutchings on 01/02/2022.
//

import Foundation

struct Game: Identifiable {
  let id : UUID
  var players : [Player]
  let playDate : Date
  var mapPlayed : String
  var selectedExpansions : [String]
}
