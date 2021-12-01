//
//  EventDescriptionPresenter.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 01.12.2021.
//

import Foundation

class EventDescriptionPresenter: EventDescriptionPresenterProtocol {
  var interactor: InteractorProtocol?
  var router: RouterProtocol?
  weak var view: ViewProtocol?
  
}
