import Kingfisher
import SnapKit
import UIKit

class episodeTableViewCell: UITableViewCell {
  
  let episodeLabel = Label(size: .header, weight: .bold, color: .green)
  let idLabel = Label(size: .header, weight: .bold, color: .orange)
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError()
  }
  
  private func setupView() {
    contentView.addSubviews(episodeLabel, idLabel)
    
    episodeLabel.snp.makeConstraints { make in
      make.leading.equalToSuperview(inset: .betweenSection)
      make.yEdges.equalToSuperview(inset: .default)
    }
    
    idLabel.snp.makeConstraints { make in
      make.leading.equalTo(episodeLabel.snp.trailing , offset: .default)
      make.yEdges.equalToSuperview(inset: .default)
    }
  }
  
  func setup(with episode: episodeModel ) {
    episodeLabel.text = "Episode"
    idLabel.text = "\(episode.id)"
  }
}
