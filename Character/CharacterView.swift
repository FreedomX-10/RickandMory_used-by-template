
import UIKit
import SnapKit

class CharacterView: BaseView {
  
  // MARK: Views
  let titleLabel = Label(size: .title, weight: .normal, color: .white )
  let tableView = UITableView()
  // MARK: Properties
  var didSelectCharacter: ((characterModel) -> Void)? // what happens after select
  var characters = [characterModel]() {
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
  private func setupView() {
    addSubview(titleLabel)
    titleLabel.text = "Title Label is here"
    titleLabel.textColor = .white
    titleLabel.backgroundColor = .clear
    
    titleLabel.snp.makeConstraints { make in
      make.top.equalToSuperview()
      make.leading.equalToSuperview()
      make.trailing.equalToSuperview()
    }
    
    addSubview(tableView)
    tableView.backgroundColor = .white
    tableView.dataSource = self
    tableView.delegate = self
    tableView.register(CharacterTableViewCell.self)
    tableView.snp.makeConstraints { make in
      make.top.equalTo(titleLabel.snp.bottom)
      make.leading.equalToSuperview()
      make.trailing.equalToSuperview()
      make.bottom.equalToSuperview()
    }
  }
  
}

extension CharacterView : UITableViewDelegate,UITableViewDataSource{
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    characters.count //รับค่าแล้วนำมาแสดงตามจำนวนข้อมูล
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let character = characters[indexPath.row]
    let cell = tableView.dequeue(CharacterTableViewCell.self , at : indexPath)
    cell.setUp(with: character)
    return cell // รับค่ามาแล้วนำไปยัดใส่แต่ ละcell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let character = characters[indexPath.row]
    didSelectCharacter?(character) // กำหนดว่าตัวไหนสามารกดได้บ้าง
  }
  
  
}
