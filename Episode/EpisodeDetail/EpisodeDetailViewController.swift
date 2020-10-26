
import UIKit

protocol EpisodeDetailDisplayable: class {
  
}

class EpisodeDetailViewController: BaseViewController<EpisodeDetailView>, EpisodeDetailDisplayable {
  
  // MARK: Properties
  private var episode: episodeModel!
  var presenter: EpisodeDetailPresenter!
  
  // MARK: Initial
  convenience init(episode : episodeModel) {
    self.init()
    self.episode  = episode
  }
  private init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    mainView.episodes = episode  //call apiService to use in class View
    mainView.nameLabel.text = "Name : \(episode.name)"
    mainView.air_dateLabel.text = "ON_Air: \(episode.air_date)"
  }
  
  // MARK: View
  
}
