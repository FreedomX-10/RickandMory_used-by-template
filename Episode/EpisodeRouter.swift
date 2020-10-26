
import UIKit


class EpisodeRouter: BaseRouter {
  
  // MARK: Properties
  weak var viewController: EpisodeViewController?
  
  // MARK: Initial
  
  init(viewController: EpisodeViewController) {
    self.viewController = viewController
  }
  
  //MARK: Routing
  func navigataToEpisodeDetail(episode : episodeModel){
    let episodeDetailViewController = EpisodeDetailViewController(episode: episode)
    let router = EpisodeDetailRouter(viewController: episodeDetailViewController)
    let presenter = EpisodeDetailPresenter(view: episodeDetailViewController, router: router)
    episodeDetailViewController.presenter = presenter
    
    viewController?.navigationController?.pushViewController(episodeDetailViewController, animated: true)
  }
  
  
}
