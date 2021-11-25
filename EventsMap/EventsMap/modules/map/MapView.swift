//
//  MapView.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 23.11.2021.
//

import UIKit

class MapView: UIViewController {
  var mapPresenter: MapPresenterProtocol?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .blue
  }


}

extension MapView: MapViewProtocol {
  
}
