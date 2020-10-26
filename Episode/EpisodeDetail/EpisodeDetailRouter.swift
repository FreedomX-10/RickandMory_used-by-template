
import UIKit


class EpisodeDetailRouter: BaseRouter {
  
  // MARK: Properties
  weak var viewController: EpisodeDetailViewController?
  
  // MARK: Initial
  
  init(viewController: EpisodeDetailViewController) {
    self.viewController = viewController
  }
  
  //MARK: Routing
  
}
