
import UIKit

protocol LocationDisplayable: class {
  func showLocation (_ location : [locationModel])
  func showError (_ error : Error )
  
}

class LocationViewController: BaseViewController<LocationView>, LocationDisplayable {
  
  
  // MARK: Properties
  
  var presenter: LocationPresenter!
  
  // MARK: Initial
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter.getLocation()
    setupEvent()
    
  }
  
  // MARK: View
  func setupEvent() {
    mainView.didSelectLocation = {
      [weak self] in
      self?.presenter.selectLocation(location: $0)
    }
  }
  
  
  func showLocation (_ location : [locationModel]){
    mainView.locations = location
    mainView.titleLabel.text = location[0].name
  }
  
  func showError(_ error: Error) {
    
  }
}
