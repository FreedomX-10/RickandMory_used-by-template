
import Foundation


class LocationPresenter {
  
  // MARK: Properties
  
  private let router: LocationRouter
  private let provider : APIProvider
  weak var view: LocationDisplayable?
  
  // MARK: Initial
  
  init(view: LocationDisplayable, router: LocationRouter , provider : APIProvider = ServiceAPIProvider()) {
    self.view = view
    self.router = router
    self.provider = provider
  }
  
  //MARK: Presenting
  func getLocation (){
    let locationTarget = RickandMortyTargetType.location
    provider.request(target: locationTarget) {
      [weak self] (result: Result<[locationModel], Error>) in
      switch result {
      case .success(let locations):
          self?.view?.showLocation(locations)
      case .failure(let error):
          self?.view?.showError(error)
      }
    }
    
  }
  
  func selectLocation(location : locationModel) {
    router.navigateToLocationDetail(location: location)
  }
  
}
