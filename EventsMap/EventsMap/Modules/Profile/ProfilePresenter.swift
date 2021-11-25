//
//  ProfilePresenter.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 26.11.2021.
//

import Foundation

class ProfilePresenter: ProfilePresenterProtocol {
  var interactor: InteractorProtocol?
  var router: RouterProtocol?
  weak var view: ViewProtocol?
  
}
