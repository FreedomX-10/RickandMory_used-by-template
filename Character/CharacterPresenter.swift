
import Foundation


class CharacterPresenter {
  
  // MARK: Properties
  
  private let router: CharacterRouter
  private let provider : APIProvider
  weak var view: CharacterDisplayable?
  
  // MARK: Initial
  
  init(view: CharacterDisplayable, router: CharacterRouter, provider: APIProvider = ServiceAPIProvider()) {
    self.view = view
    self.router = router
    self.provider = provider
  }
 
  func getCharacters() {
    let characterTarget = RickandMortyTargetType.character
    provider.request(target: characterTarget) { [weak self](result:Result<[characterModel], Error>) in
      switch result{
      case .success(let characters):
        self?.view?.showCharacters(characters)
      case .failure(let error):
        self?.view?.showError(error)
      }
    }
  }
  func selectCharacter (_ character: characterModel){
    router.navigateToCharacterDetail(character: character)
  }
}
