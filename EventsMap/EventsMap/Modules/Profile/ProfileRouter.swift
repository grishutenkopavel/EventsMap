//
//  ProfileRouter.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 26.11.2021.
//

import Foundation

class ProfileRouter: ProfileRouterProtocol {
  static func createModule() -> ViewProtocol {
    let view: ProfileViewProtocol = ProfileView()
    
    let presenter: ProfilePresenterProtocol = ProfilePresenter()
    let interactor: ProfileInteractorProtocol = ProfileInteractor()
    let router: ProfileRouterProtocol = ProfileRouter()
    
    presenter.view = view
    view.presenter = presenter
    interactor.presenter = presenter
    presenter.interactor = interactor
    presenter.router = router
    return view
  }
  
  
}
