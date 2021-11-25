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
    
    return view
  }
  
  func pushTo(navigationController: UINavigationController){
    
  }
}
