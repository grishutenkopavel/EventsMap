//
//  EventCreationView.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 01.12.2021.
//

import UIKit

class EventCreationView: UIViewController, EventCreationViewProtocol {
  var presenter: PresenterProtocol?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .green
  }
}
