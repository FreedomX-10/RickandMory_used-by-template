
import Foundation


class EpisodePresenter {
  
  // MARK: Properties
  
  private let router: EpisodeRouter
  private let provider : APIProvider
  
  weak var view: EpisodeDisplayable?
  
  // MARK: Initial
  
  init(view: EpisodeDisplayable, router: EpisodeRouter, provider: APIProvider = ServiceAPIProvider()) {
    self.view = view
    self.router = router
    self.provider = provider
  }
  
  func getEpisode () {
    let episodeTarget = RickandMortyTargetType.episode
    provider.request(target: episodeTarget) {
      [weak self] ( result:
                      Result<[episodeModel] , Error>) in
      switch result {
      case .success(let episode):
        self?.view?.showEpisode(episode)
      case .failure(let error):
        self?.view?.showError(error)
      }
      
    }
    
  }
  func selectEpisode(_ episode: episodeModel){
    router.navigataToEpisodeDetail(episode: episode)
  }
}
