
import UIKit
import SnapKit

class SelectView: BaseView {
  
  
  
  // MARK: Properties
  let buttonCharacter = UIButton()
  let characterLabel = Label(size: .subtitle, weight: .bold, color: .green)
  let buttonLocation = UIButton()
  let locationLabel = Label(size: .subtitle, weight: .bold, color: .red)
  let buttonEpisode = UIButton()
  let episodeLabel = Label(size: .subtitle, weight: .bold, color: .orange)
  
  
  
  // MARK: Initial
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: SetupView
  func setupView() {
    
    backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "812062"))
    
    addSubview(buttonCharacter)
    buttonCharacter.setImage(#imageLiteral(resourceName: "characters"), for: .normal)
    buttonCharacter.backgroundColor = .blue
    buttonCharacter.snp.makeConstraints { make in
      let size = CGSize(width: 200, height: 200)
      make.size.equalTo(size)
      make.top.equalTo(layoutGuide.snp.topMargin,offset : .default)
      make.centerX.equalToSuperview()
    }
    
    addSubview(characterLabel)
    // characterLabel.backgroundColor = .green
    characterLabel.textAlignment = .center
    characterLabel.snp.makeConstraints { make in
      make.top.equalTo(buttonCharacter.snp.bottom,offset:5)
      make.centerX.equalToSuperview()
      make.width.equalTo(100)
      make.height.equalTo(40)
    }
    
    buttonLocation.setImage(#imageLiteral(resourceName: "location"), for: .normal)
    addSubview(buttonLocation)
    buttonLocation.backgroundColor = .green
    buttonLocation.snp.makeConstraints { make in
      let size = CGSize(width: 200, height: 200)
      make.size.equalTo(size)
      make.top.equalTo(characterLabel.snp.bottom,offset : .default)
      make.centerX.equalToSuperview()
    }
    
    addSubview(locationLabel)
    //locationLabel.backgroundColor = .black
    locationLabel.textAlignment = .center
    locationLabel.snp.makeConstraints { make in
      make.top.equalTo(buttonLocation.snp.bottom,offset : 5)
      make.centerX.equalToSuperview(inset : .default)
      make.width.equalTo(100)
      make.height.equalTo(40)
    }
    buttonEpisode.setImage(#imageLiteral(resourceName: "episode"), for: .normal)
    addSubview(buttonEpisode)
    buttonEpisode.backgroundColor = .brown
    buttonEpisode.snp.makeConstraints { make in
      let size = CGSize(width: 200, height: 200)
      make.size.equalTo(size)
      make.top.equalTo(locationLabel.snp.bottom,offset: .default)
      make.centerX.equalToSuperview()
    }
    
    addSubview(episodeLabel)
    // episodeLabel.backgroundColor = .darkGray
    episodeLabel.textAlignment = .center
    episodeLabel.snp.makeConstraints { make in
      make.top.equalTo(buttonEpisode.snp.bottom,offset : 5)
      make.centerX.equalToSuperview()
      make.bottom.equalToSuperview(inset: .default)
      make.width.equalTo(100)
      make.height.equalTo(40)
      
    }
  }
}
