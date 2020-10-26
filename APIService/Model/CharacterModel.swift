//
//  CharacterModel.swift
//  RickandMorty1
//
//  Created by Akkarin Phain on 20/10/2563 BE.
//

import Foundation

struct characterModel : Codable {
  let name : String
  let status : String
  let gender : String
  let species : String
  let created : String
  let image : URL
}
