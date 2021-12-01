//
//  MapPresenter.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 25.11.2021.
//

import UIKit

class MapPresenter: MapPresenterProtocol {
  var interactor: InteractorProtocol?
  var router: RouterProtocol?
  weak var view: ViewProtocol?
  
  func showProfile(navigationController: UINavigationController) {
    (router as? MapRouterProtocol)?.pushToProfileModule(use: navigationController)
  }
  
  func showSearchTable(navigationController: UINavigationController) {
    (router as? MapRouterProtocol)?.pushToSearchTableModule(use: navigationController)
  }
  func showEventDescription(navigationController: UINavigationController) {
    (router as? MapRouterProtocol)?.pushToEventDescriptionModule(use: navigationController)
  }
  func showEventCreation(navigationController: UINavigationController) {
    (router as? MapRouterProtocol)?.pushToEventCreationModule(use: navigationController)
  }
}

//MARK: - Event handling
extension MapPresenter {
  
}
