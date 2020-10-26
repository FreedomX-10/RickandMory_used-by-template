
import UIKit

protocol CharacterDisplayable: class {
  func showCharacters(_ characters: [characterModel])
  func showError(_ error: Error)
}

class CharacterViewController: BaseViewController<CharacterView>, CharacterDisplayable {
  
  // MARK: Properties
  
  var presenter: CharacterPresenter!
  
  // MARK: Initial
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter.getCharacters()
    setupEvent()
    
  }
  
  private func setupEvent(){
    mainView.didSelectCharacter = {[weak self] in  // didSelectCharacter from CharacterView in line 11
      self?.presenter.selectCharacter($0)
    }
  }
  
  // MARK: View
  func showCharacters(_ characters: [characterModel]) {
    mainView.characters = characters
  }
  
  func showError(_ error: Error) {
    
  }
}
