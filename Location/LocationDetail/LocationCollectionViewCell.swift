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
    addSubview(imageView)
    imageView.snp.makeConstraints { make in
      make.top.equalToSuperview()
      make.xEdges.equalToSuperview()
      make.bottom.equalToSuperview()
    }
    
    
  }
//  func setup( with location : locationModel){
//   
//    let apiResidents  = location.residents[0]
//    var fisrtAPI = String(apiResidents.dropLast())
//    while fisrtAPI.last != "/" {
//      fisrtAPI = String(fisrtAPI.dropLast())
//    }
//    let subAPI = apiResidents.components(separatedBy: "/")
//    let number = subAPI[subAPI.endIndex]
//    let lastChar = String(number) + ".jpeg"
//    let imageCharacter = fisrtAPI + "avatar/" + lastChar
//    let url = URL(string: imageCharacter)
//    imageView.kf.setImage(with: url)
//    
//    
//  }
}
