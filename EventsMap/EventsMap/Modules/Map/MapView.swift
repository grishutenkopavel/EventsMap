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
  
  private lazy var eventDescriptionButton: UIButton? = {
    let button = UIButton()
    button.frame = CGRect(x: 100, y: 300, width: 100, height: 100)
    button.setTitle("event description", for: .normal)
    button.addTarget(self, action: #selector(didTapEventDescriptionButton(sender:)), for: .touchUpInside)
    return button
  }()
  
  private lazy var eventCreationButton: UIButton? = {
    let button = UIButton()
    button.frame = CGRect(x: 100, y: 500, width: 100, height: 100)
    button.setTitle("event creation", for: .normal)
    button.addTarget(self, action: #selector(didTapEventCreationButton(sender:)), for: .touchUpInside)
    return button
  }()
  
  var mapSearchView: MapSearchView = MapSearchView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .blue
    setupView()
  }
  private func setupView() {
    guard let profileButton = profileButton,
          let eventCreationButton = eventCreationButton,
          let eventDescriptionButton = eventDescriptionButton
    else{ return }
    
    view.addSubview(profileButton)
    view.addSubview(eventCreationButton)
    view.addSubview(eventDescriptionButton)
    view.addSubview(mapSearchView)
    setConstraints()
  }

}
//MARK: - Actions
extension MapView {
  @objc func didTapProfileButton(sender: UIButton) {
    guard let navigationController = navigationController else { return }
    (presenter as? MapPresenterProtocol)?.showProfile(navigationController: navigationController)
  }
  @objc func didTapEventDescriptionButton(sender: UIButton) {
    guard let navigationController = navigationController else { return }
    (presenter as? MapPresenterProtocol)?.showEventDescription(navigationController: navigationController)
  }
  @objc func didTapEventCreationButton(sender: UIButton) {
    guard let navigationController = navigationController else { return }
    (presenter as? MapPresenterProtocol)?.showEventCreation(navigationController: navigationController)
  }
}

//MARK: - Constraints
extension MapView {
  func setConstraints() {
    mapSearchView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      mapSearchView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      mapSearchView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      mapSearchView.topAnchor.constraint(equalTo: view.topAnchor, constant: view.bounds.height*mapSearchView.position.getPosition()),
      mapSearchView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
    ])
    
  }
}
