//
//  RouterProtocol.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 25.11.2021.
//

import UIKit

protocol RouterProtocol: AnyObject {
  static func createModule() -> ViewProtocol
}
