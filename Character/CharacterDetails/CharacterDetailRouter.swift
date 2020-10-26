
import UIKit


class CharacterDetailRouter: BaseRouter {
  
  // MARK: Properties
  weak var viewController: CharacterDetailViewController?
  
  // MARK: Initial
  
  init(viewController: CharacterDetailViewController) {
    self.viewController = viewController
  }
  
  //MARK: Routing
  
}
