//
//  ProfileEntity.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 26.11.2021.
//

import Foundation

struct ProfileEntity: ProfileEntityProtocol {
  var firstName: String?
  var lastName: String?
  var email: String?
  var likedEvents: [String]?
}
