
import UIKit
import SnapKit

class EpisodeView: BaseView {
  
  // MARK: Properties
  let titleLabel = Label(size: .title, weight: .normal, color: .black)
  let tableView = UITableView()
  
  var didSelectEpisode: ((episodeModel) -> Void)?
  var episodes = [episodeModel](){
    didSet{
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
    addSubviews(titleLabel)
    titleLabel.text = "Title lable is here"
    titleLabel.textColor = .white
    titleLabel.backgroundColor = .black
    titleLabel.snp.makeConstraints { make in
      make.top.equalToSuperview()
      make.leading.equalToSuperview()
    }
    
    addSubview(tableView)
    tableView.backgroundColor = .green
    tableView.snp.makeConstraints { make in
      make.top.equalTo(titleLabel.snp.bottom)
      make.xEdges.equalToSuperview()
      make.bottom.equalToSuperview()
    }
    tableView.delegate = self
    tableView.dataSource = self
    tableView.register(episodeTableViewCell.self)
  }
}
extension EpisodeView : UITableViewDelegate,UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    episodes.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let episode = episodes[indexPath.row]
    let cell = tableView.dequeue(episodeTableViewCell.self, at: indexPath)
    cell.setup(with: episode)
    cell.backgroundColor = UIColor.black
    cell.layer.borderColor = UIColor.yellow.cgColor
    cell.layer.borderWidth = 3
    cell.layer.cornerRadius = 20
    cell.clipsToBounds = true
    return cell
  }
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let episode = episodes[indexPath.row]
    didSelectEpisode?(episode)
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableView.automaticDimension
  }
  
}
