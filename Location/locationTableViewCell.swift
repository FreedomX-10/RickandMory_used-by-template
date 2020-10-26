import SnapKit
import UIKit

class locationTableViewCell: UITableViewCell {
  
  let locationLabel = Label(size: .header, weight: .bold, color: .red)
  let idLabel = Label(size: .header, weight: .bold, color: .green)
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setupView (){
    addSubview(locationLabel)
    locationLabel.snp.makeConstraints { make in
      make.leading.equalToSuperview(inset: .betweenSection)
      make.yEdges.equalToSuperview(inset: .default)
    }
    addSubview(idLabel)
    idLabel.snp.makeConstraints { make in
      make.leading.equalTo(locationLabel.snp.trailing , offset: .default)
      make.yEdges.equalToSuperview(inset: .default)
    }
    
  }
  
  func setup (with location : locationModel){
    
    locationLabel.text = "Location"
    idLabel.text = "\(location.id)"
    
  }
  
}



