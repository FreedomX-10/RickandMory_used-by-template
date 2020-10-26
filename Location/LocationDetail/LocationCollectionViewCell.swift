import Kingfisher
import SnapKit
import UIKit

class LocationCollectionViewCell: UICollectionViewCell {
  
  let imageView = UIImageView()
  var location : locationModel!
  override init(frame: CGRect) {
    super .init(frame: .zero)
    
    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setupView() {
    layer.cornerRadius = 100
    imageView.layer.cornerRadius = 100
    imageView.clipsToBounds = true
    imageView.contentMode = .scaleAspectFill
    imageView.translatesAutoresizingMaskIntoConstraints = false
    addSubview(imageView)
    imageView.snp.makeConstraints { make in
      make.top.equalToSuperview()
      make.xEdges.equalToSuperview()
      make.bottom.equalToSuperview()
    }
    
    
  }
  func setup (_ indexPath : IndexPath , location : locationModel) {
    let APIResident = location.residents[indexPath.row]
    var FirstAPI = String(APIResident.dropLast())
    while FirstAPI.last != "/" {
      FirstAPI = String(FirstAPI.dropLast())
    }
    let subAPI = APIResident.components(separatedBy: "/")
    let number = subAPI[subAPI.endIndex-1]
    let lastChar = String(number) + ".jpeg"
    let imageLocations = FirstAPI + "avatar/" + lastChar
    let url = URL(string: imageLocations)
    imageView.kf.setImage(with: url)
  }
}
