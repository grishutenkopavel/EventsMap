//
//  PresenterProtocol.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 25.11.2021.
//

import Foundation

protocol PresenterProtocol: AnyObject {
  var view: ViewProtocol? { get set }
  var interactor: InteractorProtocol? { get set }
  var router: RouterProtocol? { get set }
}
