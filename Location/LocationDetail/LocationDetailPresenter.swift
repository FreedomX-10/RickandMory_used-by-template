
import Foundation


class LocationDetailPresenter {
  
  // MARK: Properties
  
  private let router: LocationDetailRouter
  weak var view: LocationDetailDisplayable?
  
  // MARK: Initial
  
  init(view: LocationDetailDisplayable, router: LocationDetailRouter) {
    self.view = view
    self.router = router
  }
  
  //MARK: Presenting
  
}
