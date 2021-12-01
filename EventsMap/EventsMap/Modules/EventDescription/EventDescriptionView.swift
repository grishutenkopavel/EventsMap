//
//  EventDescriptionView.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 01.12.2021.
//

import UIKit

class EventDescriptionView: UIViewController, EventDescriptionViewProtocol {
  var presenter: PresenterProtocol?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .red
  }
}
