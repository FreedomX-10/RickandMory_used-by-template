//
//  LocationModel.swift
//  RickandMorty1
//
//  Created by Akkarin Phain on 20/10/2563 BE.
//

import Foundation

struct locationModel : Codable {
  let id : Int
  let name : String
  let type : String
  let dimension : String
  let residents : Array<String>
}
