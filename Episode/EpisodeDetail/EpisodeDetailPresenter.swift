
import Foundation


class EpisodeDetailPresenter {
  
  // MARK: Properties
  
  private let router: EpisodeDetailRouter
  weak var view: EpisodeDetailDisplayable?
  
  // MARK: Initial
  
  init(view: EpisodeDetailDisplayable, router: EpisodeDetailRouter) {
    self.view = view
    self.router = router
  }
  
  //MARK: Presenting
  
}
