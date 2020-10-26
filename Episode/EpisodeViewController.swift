
import UIKit

protocol EpisodeDisplayable: class {
  func showEpisode(_ episode: [episodeModel])
  func showError(_ error: Error)
}

class EpisodeViewController: BaseViewController<EpisodeView>, EpisodeDisplayable {
  
  // MARK: Properties
  
  var presenter: EpisodePresenter!
  
  // MARK: Initial
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter.getEpisode()
    setupViewEvents()
  }
  private func setupViewEvents(){
    mainView.didSelectEpisode = { [weak self] in
      self?.presenter.selectEpisode($0)
    }
  }
  // MARK: View
  func showEpisode(_ episode: [episodeModel]) {
    mainView.episodes = episode
    mainView.titleLabel.text = episode[0].name
    
    
  }
  
  func showError(_ error: Error) {
    
  }
}
