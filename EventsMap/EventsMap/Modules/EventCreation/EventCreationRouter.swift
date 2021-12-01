//
//  EventCreationRouter.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 01.12.2021.
//

import Foundation

class EventCreationRouter: EventCreationRouterProtocol {
  static func createModule() -> ViewProtocol {
    let view: EventCreationViewProtocol = EventCreationView()
    
    let presenter: EventCreationPresenterProtocol = EventCreationPresenter()
    let interactor: EventCreationInteractorProtocol = EventCreationInteractor()
    let router: EventCreationRouterProtocol = EventCreationRouter()
    
    presenter.view = view
    view.presenter = presenter
    interactor.presenter = presenter
    presenter.interactor = interactor
    presenter.router = router
    return view
  }
  
  
}
