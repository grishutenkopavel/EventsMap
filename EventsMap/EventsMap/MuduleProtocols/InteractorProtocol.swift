//
//  InteractorProtocol.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 25.11.2021.
//

import Foundation

protocol InteractorProtocol: AnyObject {
  var presenter: PresenterProtocol? { get set }
}
