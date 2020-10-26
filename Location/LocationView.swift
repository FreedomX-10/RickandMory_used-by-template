
import UIKit
import SnapKit

class LocationView: BaseView {
  
  // MARK: Views
  let titleLabel = Label(size: .title, weight: .normal, color: .black)
  let tableView = UITableView()
  
  // MARK: Properties
  var didSelectLocation : ((locationModel) -> Void)?
  var locations = [locationModel](){
    didSet {
      tableView.reloadData()
    }
  }
  
  
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
    
    titleLabel.text = "Title lable is here"
    titleLabel.textColor = .white
    titleLabel.backgroundColor = .clear
    addSubview(titleLabel)
    titleLabel.snp.makeConstraints { make in
      make.top.equalToSuperview()
      make.leading.equalToSuperview()
    }
    
    addSubview(tableView)
    tableView.snp.makeConstraints { make in
      make.top.equalTo(titleLabel.snp.bottom)
      make.xEdges.equalToSuperview()
      make.bottom.equalToSuperview()
    }
    
    tableView.dataSource = self
    tableView.delegate = self
    tableView.register(locationTableViewCell.self)
  }
  
}

extension LocationView : UITableViewDelegate,UITableViewDataSource {
  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    locations.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let location = locations[indexPath.row]
    let cell = tableView.dequeue(locationTableViewCell.self , at: indexPath)
    cell.setup(with: location)
    cell.backgroundColor = UIColor.black
    cell.layer.borderColor = UIColor.yellow.cgColor
    cell.layer.borderWidth = 4
    cell.layer.cornerRadius = 10
    cell.clipsToBounds = true
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let location = locations[indexPath.row]
    didSelectLocation?(location)
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableView.automaticDimension // constraints for same heighr of row
  }
}
