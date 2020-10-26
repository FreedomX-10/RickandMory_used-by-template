
import UIKit
import SnapKit

class CharacterDetailView: BaseView {
  
  var show: characterModel?
  let characterImageView = UIImageView()
  let nameLabel = Label(size: .subtitle, weight: .bold, color: .black)
  let genderLabel = Label(size: .subtitle, weight: .bold, color: .black)
  let speciesLabel = Label(size: .subtitle, weight: .bold, color: .black)
  let createdLabel = Label(size: .subtitle, weight: .bold, color: .black)
  let locationLabel = Label(size: .subtitle, weight: .bold, color: .black)
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: SetupView
  func setupView () {
    
    addSubview(characterImageView)
    characterImageView.kf.setImage(with: show?.image)
    //characterImageView.backgroundColor = .orange
    characterImageView.snp.makeConstraints { make in
      let size = CGSize(width: 200, height: 200)
      make.size.equalTo(size)
      make.top.equalTo(layoutGuide.snp.topMargin,offset : .default)
      make.centerX.equalToSuperview()
    }
    
    addSubview(nameLabel)
    //nameLabel.backgroundColor = .red
    nameLabel.snp.makeConstraints { make in
      make.top.equalTo(characterImageView.snp.bottom,offset : .default)
      make.leading.equalTo(.default)
    }
    
    addSubview(genderLabel)
    genderLabel.snp.makeConstraints{ make in
      make.top.equalTo(nameLabel.snp.bottom,offset : .default)
    }
    
    addSubview(speciesLabel)
    speciesLabel.snp.makeConstraints { make in
      make.top.equalTo(genderLabel.snp.bottom,offset : .default)
    }
    
    addSubview(createdLabel)
    createdLabel.snp.makeConstraints { make in
      make.top.equalTo(speciesLabel.snp.bottom,offset : .default)
    }
    
    
  }
  
}
