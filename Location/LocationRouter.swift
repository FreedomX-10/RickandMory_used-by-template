
import UIKit


class LocationRouter: BaseRouter {
  
  // MARK: Properties
  weak var viewController: LocationViewController?
  
  // MARK: Initial
  
  init(viewController: LocationViewController) {
    self.viewController = viewController
  }
  
  //MARK: Routing
  func navigateToLocationDetail (location : locationModel){
    let locationDetailViewController = LocationDetailViewController(location: location)
    let router  = LocationDetailRouter(viewController: locationDetailViewController)
    let presenter = LocationDetailPresenter(view: locationDetailViewController, router: router)
    locationDetailViewController.presenter = presenter
    
    viewController?.navigationController?.pushViewController(locationDetailViewController, animated: true)
    
  }
  
  
}
