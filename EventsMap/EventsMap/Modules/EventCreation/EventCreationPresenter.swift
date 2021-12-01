//
//  EventCreationPresenter.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 01.12.2021.
//

import Foundation

class EventCreationPresenter: EventCreationPresenterProtocol {
  var interactor: InteractorProtocol?
  var router: RouterProtocol?
  weak var view: ViewProtocol?
  
}
