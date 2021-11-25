//
//  MapView.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 23.11.2021.
//

import UIKit

class MapView: UIViewController, MapViewProtocol {
  var presenter: PresenterProtocol?
  
  private lazy var profileButton: UIButton? = {
    let button = UIButton()
    button.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
    button.setTitle("profile", for: .normal)
    button.addTarget(self, action: #selector(didTapProfileButton(sender:)), for: .touchUpInside)
    return button
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .blue
    if let profileButton = profileButton {
      view.addSubview(profileButton)
    }
  }


}
//MARK: - Actions
extension MapView {
  @objc func didTapProfileButton(sender: UIButton) {
    guard let navigationController = navigationController else { return }
    (presenter as? MapPresenterProtocol)?.showProfile(navigationController: navigationController)
  }
}
