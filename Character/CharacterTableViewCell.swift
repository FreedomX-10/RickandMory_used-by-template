import Kingfisher
import SnapKit
import UIKit

class CharacterTableViewCell: UITableViewCell {
  
  let characterImageView = UIImageView()
  let nameLabel = Label(size: .body, weight: .bold, color: .black)
  let statusLabel : UILabel = {
    let label = UILabel()
    label.font = UIFont.boldSystemFont(ofSize: 14)
    label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    label.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    label.layer.cornerRadius = 5
    label.clipsToBounds = true
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
    
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
  
  private func setupView () {
    addSubview(characterImageView)
    characterImageView.contentMode = .scaleAspectFill
    characterImageView.clipsToBounds = true
    characterImageView.layer.cornerRadius = 50
    characterImageView.snp.makeConstraints{ make in
      let imageSize = CGSize(width: 100, height: 100)
      make.size.equalTo(imageSize)
      make.top.equalToSuperview(offset: .default)
      make.leading.equalToSuperview(offset: .default)
      make.bottom.equalTo(-Spacing.default.value)
    }
    
    addSubview(nameLabel)
    nameLabel.snp.makeConstraints{ make in
      make.top.equalTo(characterImageView.snp.top)
      make.leading.equalTo(characterImageView.snp.trailing, offset: .default)
      make.trailing.equalToSuperview(offset: .default)
    }
    
    addSubview(statusLabel)
    statusLabel.snp.makeConstraints{ make in
      make.leading.equalTo(characterImageView.snp.trailing, offset: .default)
      make.top.equalTo(nameLabel.snp.bottom, offset: .default)
    }
    
  }
  
  func setUp(with character: characterModel) {
    statusLabel.text = character.status
    nameLabel.text = character.name
    characterImageView.kf.setImage(with: character.image)
    
    
  }
}
