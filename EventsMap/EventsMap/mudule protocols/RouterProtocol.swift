//
//  RouterProtocol.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 25.11.2021.
//

import UIKit

protocol RouterProtocol: class {
  static func createModule() -> ViewProtocol
  func pushTo(navigationController: UINavigationController)
}
