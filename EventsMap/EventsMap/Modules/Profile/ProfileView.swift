//
//  ProfileView.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 26.11.2021.
//

import UIKit

class ProfileView: UIViewController, ProfileViewProtocol {
  var presenter: PresenterProtocol?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .gray
  }
}
