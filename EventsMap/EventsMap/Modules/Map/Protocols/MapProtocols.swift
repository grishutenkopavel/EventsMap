//
//  MapProtocols.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 25.11.2021.
//

import UIKit

protocol MapViewProtocol: ViewProtocol {
  
}

protocol MapInteractorProtocol: InteractorProtocol {
  
}

protocol MapPresenterProtocol: PresenterProtocol {
  func showProfile(navigationController: UINavigationController)
  func showSearchTable(navigationController: UINavigationController)
  func showEventDescription(navigationController: UINavigationController)
  func showEventCreation(navigationController: UINavigationController)
}

protocol MapEntityProtocol: EntityProtocol {
  
}

protocol MapRouterProtocol: RouterProtocol {
  func pushToProfileModule(use navigationController: UINavigationController)
  func pushToSearchTableModule(use navigationController: UINavigationController)
  func pushToEventDescriptionModule(use navigationController: UINavigationController)
  func pushToEventCreationModule(use navigationController: UINavigationController)
}
