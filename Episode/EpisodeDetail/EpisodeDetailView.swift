
import UIKit
import SnapKit

class EpisodeDetailView: BaseView {
  
  // MARK: Views
  var episodes : episodeModel!
  var collectionView : UICollectionView!
  var didSelectEpisode:((episodeModel) -> Void)?
  var episode = [episodeModel](){
    didSet{
      collectionView.reloadData()
    }
  }
  
  let nameLabel = Label(size: .subtitle, weight: .bold, color: .red)
  let air_dateLabel = Label(size: .subtitle, weight: .bold, color: .red)
  let bg = UIView()
  
  // MARK: Properties
  
  
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
    
    bg.backgroundColor = .black
    addSubview(bg)
    bg.snp.makeConstraints{ make in
      make.xEdges.equalToSuperview()
      make.yEdges.equalToSuperview()
      
    }
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    collectionView.backgroundColor = .black
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    collectionView.contentInset = UIEdgeInsets(top: 4, left: 12, bottom: 4, right: 12)
    addSubview(collectionView)
    collectionView.snp.makeConstraints { make in
      make.centerY.equalToSuperview()
      make.xEdges.equalToSuperview(offset: .default)
      make.height.equalTo(300)
    }
    collectionView.delegate = self
    collectionView.dataSource = self
    collectionView.register(EpisodeCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    
    addSubview(nameLabel)
    nameLabel.snp.makeConstraints { make in
      make.xEdges.equalToSuperview()
      make.top.equalTo(layoutGuide.snp.topMargin)
    }
    
    addSubview(air_dateLabel)
    air_dateLabel.snp.makeConstraints {  make in
      make.top.equalTo(collectionView.snp.bottom,offset : .default)
      make.xEdges.equalToSuperview()
    }
  }
  
}

extension EpisodeDetailView : UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return episodes.characters.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! EpisodeCollectionViewCell
    let APIResident = episodes.characters[indexPath.row]
    var FirstAPI = String(APIResident.dropLast())
    while FirstAPI.last != "/" {
      FirstAPI = String(FirstAPI.dropLast())
    }
    let subAPI = APIResident.components(separatedBy: "/")
    let number = subAPI[subAPI.endIndex-1]
    let lastChar = String(number) + ".jpeg"
    let imageLocations = FirstAPI + "avatar/" + lastChar
    let url = URL(string: imageLocations)
    let imageView = UIImageView()
    imageView.kf.setImage(with: url)
    cell.addSubview(imageView)
    cell.clipsToBounds = true
    imageView.contentMode = .scaleAspectFill
    imageView.translatesAutoresizingMaskIntoConstraints = false
  
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexpath:IndexPath) -> CGSize {
    return CGSize(width: collectionView.frame.width , height: 300)
  }
  
  
}
