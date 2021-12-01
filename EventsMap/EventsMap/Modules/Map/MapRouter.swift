//
//  MapRouter.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 25.11.2021.
//

import UIKit

class MapRouter: MapRouterProtocol {
  
  static func createModule() -> ViewProtocol {
    let view: MapViewProtocol = MapView()
    
    let presenter: MapPresenterProtocol = MapPresenter()
    let interactor: MapInteractorProtocol = MapInteractor()
    let router: MapRouterProtocol = MapRouter()
    
    presenter.view = view
    view.presenter = presenter
    interactor.presenter = presenter
    presenter.interactor = interactor
    presenter.router = router
    return view
  }
  
  func pushToProfileModule(use navigationController: UINavigationController) {
    let profile = ProfileRouter.createModule() as? ProfileView
    if let profile = profile {
      navigationController.pushViewController(profile, animated: true)
    }
  }
  
  func pushToSearchTableModule(use navigationController: UINavigationController) {
    print("SearchTable appearance")
  }
  
  func pushToEventDescriptionModule(use navigationController: UINavigationController) {
    let eventDescription = EventDescriptionRouter.createModule() as? EventDescriptionView
    if let eventDescription = eventDescription {
      navigationController.pushViewController(eventDescription, animated: true)
    }
  }
  
  func pushToEventCreationModule(use navigationController: UINavigationController) {
    let eventCreation = EventCreationRouter.createModule() as? EventCreationView
    if let eventCreation = eventCreation {
      navigationController.pushViewController(eventCreation, animated: true)
    }
  }
  
}
