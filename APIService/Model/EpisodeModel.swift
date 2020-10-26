//
//  EpisodeModel.swift
//  RickandMorty1
//
//  Created by Akkarin Phain on 20/10/2563 BE.
//

import Foundation

struct episodeModel : Codable {
  let id : Int
  let name : String
  let air_date : String
  let episode : String
  let characters : Array<String>
}
