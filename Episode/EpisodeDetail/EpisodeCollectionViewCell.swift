import Kingfisher
import SnapKit
import UIKit
import UIKit

class EpisodeCollectionViewCell: UICollectionViewCell {
  let imageView = UIImageView()
  override init(frame: CGRect) {
    super .init(frame: .zero)
    
    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setupView() {
    addSubview(imageView)
    imageView.snp.makeConstraints { make in
      make.top.equalToSuperview()
      make.xEdges.equalToSuperview()
      make.bottom.equalToSuperview()
    }
    
    
  }
}
