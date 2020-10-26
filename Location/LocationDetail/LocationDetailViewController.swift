
import UIKit

protocol LocationDetailDisplayable: class {
  func showLocation (_ location : [locationModel])
  func showError(_ error : Error)
}

class LocationDetailViewController: BaseViewController<LocationDetailView>, LocationDetailDisplayable {
  
  // MARK: Properties
  var location : locationModel!
  var presenter: LocationDetailPresenter!
  
  // MARK: Initial
  convenience init(location : locationModel){
    self.init()
    self.location = location
  }
  
  init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    showLocationDetail()
    mainView.location = location
  }
  
  // MARK: View
  func showLocationDetail() {
    mainView.nameLable.text = "Location: \(location.name)"
    mainView.residentLable.text = "Resident"
    mainView.dimensionLabel.text = "Dimension: \(location.dimension)"
  }
  
  func showLocation (_ location : [locationModel]){
    
  }
  
  func showError(_ error : Error) {
    
  }
  
}
