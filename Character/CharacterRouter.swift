
import UIKit


class CharacterRouter: BaseRouter {
  
  // MARK: Properties
  weak var viewController: CharacterViewController?
  
  // MARK: Initial
  
  init(viewController: CharacterViewController) {
    self.viewController = viewController
  }
  func navigateToCharacterDetail (character : characterModel){
    let chartacterDetail = CharacterDetailViewController(character: character)
    let router = CharacterDetailRouter(viewController: chartacterDetail)
    let presenter = CharacterDetailPresenter(view: chartacterDetail, router: router)
    chartacterDetail.presenter = presenter
    
    viewController?.navigationController?.pushViewController(chartacterDetail, animated: true)
    
    
  }
  
  
}
