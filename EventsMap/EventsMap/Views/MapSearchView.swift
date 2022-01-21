//
//  MapSearchView.swift
//  EventsMap
//
//  Created by Павел Гришутенко on 12.01.2022.
//

import UIKit

class MapSearchView: UIView {
  enum SearchViewPosition {
    case bottom, midle, top
    
    func getPosition() -> CGFloat {
      // sets the offset from the top as a percentage
      switch self {
      case .bottom:
        return 0.88
      case .midle:
        return 0.5
      case .top:
        return 0.1
      }
    }
  }
  var position: SearchViewPosition = .bottom {
    didSet {
      print("hel")
    }
  }
  var stackViews: UIStackView?
  var searchBar: UISearchBar?
  var searchButton: UIButton?
  var ageSlider: UISlider?
  var collectionOfEventCategory: UICollectionView?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = .orange
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
