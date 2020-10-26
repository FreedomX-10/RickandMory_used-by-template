
import UIKit


class LocationDetailRouter: BaseRouter {
  
  // MARK: Properties
  weak var viewController: LocationDetailViewController?
  
  // MARK: Initial
  
  init(viewController: LocationDetailViewController) {
    self.viewController = viewController
  }
  
  //MARK: Routing
  
}
