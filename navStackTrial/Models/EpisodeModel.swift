//
//  EpisodeModel.swift
//  navStackTrial
//
//  Created by N S on 07.11.2023.
//

import Foundation

struct EpisodeModel: Codable, Identifiable {
  let id: Int
  let name: String
  let characters: [String]
}

extension EpisodeModel {
  static var stub = EpisodeModel(id: 0, name: "", characters: [""])
}
