
import UIKit

protocol SelectDisplayable: class {
  
}
typealias SelcectScrollabelView = BaseScrollableView<SelectView>

class SelectViewController: BaseViewController<SelcectScrollabelView>, SelectDisplayable {
  
  // MARK: Properties
  
  var presenter: SelectPresenter!
  
  // MARK: Initial
  
  override func viewDidLoad() {
    super.viewDidLoad()
//    mainView.view.buttonCharacters.isExclusiveTouch = true
//    mainView.view.buttonLocations.isExclusiveTouch = true
//    mainView.view.buttonEpisode.isExclusiveTouch = true  line 19 - 21 มีก็ได้ไม่มีก็ได้
    setupView()
    navigationItem.title = "RickAndMorty"
    mainView.view.buttonCharacter.addTarget(self, action: #selector(toCharacter), for: .touchUpInside) //away use
    mainView.view.buttonLocation.addTarget(self, action: #selector(toLocation), for: .touchUpInside)
    mainView.view.buttonEpisode.addTarget(self, action: #selector(toEpisode), for: .touchUpInside)
  }
  
  // MARK: View
  
  func setupView () {
    mainView.view.characterLabel.text = "Character"
    mainView.view.locationLabel.text = "Location"
    mainView.view.episodeLabel.text = "Episode"
  }
  @objc func toCharacter() {
    presenter.presentCharacter()
  }
  @objc func toLocation() {
    presenter.presentLocation()
  }
  @objc func toEpisode() {
    presenter.presentEpisode()
  }
  
}
