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
  weak var view: ViewProtocol? {
    didSet {
      setUpRecognizer()
    }
  }
  
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
  
  private func setUpGestures() {
    setUpRecognizer()
  }
  
  private func setUpRecognizer() {
    let mapSearchView = (view as? MapView)?.mapSearchView
    let serachViewSwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(mapSearchViewSwipe(sender:)))
    serachViewSwipeGestureRecognizer.direction = .up
    mapSearchView?.addGestureRecognizer(serachViewSwipeGestureRecognizer)
  }
}

//MARK: - Event handling
extension MapPresenter {
  @objc func mapSearchViewSwipe(sender: UISwipeGestureRecognizer) {
    let mapSearchView = (view as? MapView)?.mapSearchView
    if sender.direction == .up {
      mapSearchView?.position = .midle
    }
  }
}
