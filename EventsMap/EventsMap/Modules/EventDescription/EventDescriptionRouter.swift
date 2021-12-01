//
//  EventDescriptionRouter.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 01.12.2021.
//

import Foundation

class EventDescriptionRouter: EventDescriptionRouterProtocol {
  static func createModule() -> ViewProtocol {
    let view: EventDescriptionViewProtocol = EventDescriptionView()
    
    let presenter: EventDescriptionPresenterProtocol = EventDescriptionPresenter()
    let interactor: EventDescriptionInteractorProtocol = EventDescriptionInteractor()
    let router: EventDescriptionRouterProtocol = EventDescriptionRouter()
    
    presenter.view = view
    view.presenter = presenter
    interactor.presenter = presenter
    presenter.interactor = interactor
    presenter.router = router
    return view
  }
  
  
}
