
import Foundation


class CharacterDetailPresenter {
  
  // MARK: Properties
  
  private let router: CharacterDetailRouter
  weak var view: CharacterDetailDisplayable?
  
  // MARK: Initial
  
  init(view: CharacterDetailDisplayable, router: CharacterDetailRouter) {
    self.view = view
    self.router = router
  }
  
  //MARK: Presenting
  
}
