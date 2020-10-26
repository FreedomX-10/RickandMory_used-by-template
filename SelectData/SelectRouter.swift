
import UIKit


class SelectRouter: BaseRouter {
  
  // MARK: Properties
  weak var viewController: SelectViewController?
  
  // MARK: Initial
  
  init(viewController: SelectViewController) {
    self.viewController = viewController
  }
  
  //MARK: Routing
  func routeToCharacter() {
    let characterViewController = CharacterViewController()
    let router = CharacterRouter(viewController: characterViewController)
    let presenter = CharacterPresenter(view: characterViewController, router: router)
    characterViewController.presenter = presenter
    
    viewController?.navigationController?.pushViewController(characterViewController, animated: true)
  }
  func routeToLocation() {
    let locationViewController = LocationViewController()
    let router = LocationRouter(viewController: locationViewController)
    let presenter = LocationPresenter(view: locationViewController, router: router)
    locationViewController.presenter = presenter
    
    viewController?.navigationController?.pushViewController(locationViewController, animated: true)
    
  }
  
  func routeToEpisode() {
    let episodeViewController = EpisodeViewController()
    let router = EpisodeRouter(viewController: episodeViewController)
    let presenter = EpisodePresenter(view: episodeViewController, router: router)
    episodeViewController.presenter = presenter
    
    viewController?.navigationController?.pushViewController(episodeViewController, animated: true)
  }
  
}
