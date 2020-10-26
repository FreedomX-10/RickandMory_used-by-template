
import Foundation


class SelectPresenter {
  
  // MARK: Properties
  
  private let router: SelectRouter
  private let provider :APIProvider
  weak var view: SelectDisplayable?
  
  // MARK: Initial
  
  init(view: SelectDisplayable, router: SelectRouter,provider : APIProvider = ServiceAPIProvider()) {
    self.view = view
    self.router = router
    self.provider = provider
  }
  
  //MARK: Presenting
  func presentCharacter () {
    router.routeToCharacter()
  }
  func presentLocation() {
    router.routeToLocation()
  }
  func presentEpisode() {
    router.routeToEpisode()
  }
  
}
