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
  func showEventDescription(navigationController: UINavigationController) {}
  func showEventCreation(navigationController: UINavigationController) {}
}

//MARK: - Event handling
extension MapPresenter {
  
}
