
import UIKit
import SnapKit

class LocationDetailView: BaseView {
  
  // MARK: Views
  var collectionView : UICollectionView = {
    var layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
    cv.translatesAutoresizingMaskIntoConstraints = false
    cv.register(LocationCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    return cv
  }()
  var location : locationModel!
  var didSelectEpisode:((locationModel) -> Void)?
  var locations = [locationModel](){
    didSet{
      collectionView.reloadData()
    }
  }
  let nameLable = Label(size: .header, weight: .normal, color: .red)
  let residentLable = Label(size: .subtitle, weight: .normal, color: .red)
  let dimensionLabel = Label(size: .subtitle, weight: .normal, color: .red)
  let bg = UIView()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
    
  }
  
  
  // MARK: SetupView
  func setupView() {
    bg.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "23627"))
    addSubview(bg)
    bg.snp.makeConstraints { make in
      make.yEdges.equalToSuperview()
      make.xEdges.equalToSuperview()
    }
    
    addSubview(nameLable)
    //nameLable.text = "Name : Text is here"
    //nameLable.backgroundColor = .black
    nameLable.snp.makeConstraints { make in
      make.top.equalTo(layoutGuide.snp.topMargin)
      make.xEdges.equalToSuperview()
    }
    collectionView.delegate = self
    collectionView.dataSource = self
    collectionView.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "23627"))
    addSubview(collectionView)
    collectionView.snp.makeConstraints { make in
      make.centerY.equalToSuperview()
      make.xEdges.equalToSuperview(offset: .default)
      make.height.equalTo(300)
    }
    
    addSubview(residentLable)
    //residentLable.backgroundColor = .green
    //residentLable.text = "Resident: Text is here"
    residentLable.snp.makeConstraints { make in
      make.bottom.equalTo(collectionView.snp.topMargin,offset: -16)
      make.xEdges.equalToSuperview()
    }
    
    addSubview(dimensionLabel)
    //dimensionLabel.text = "Dimension: Text is here"
    //dimensionLabel.backgroundColor = .black
    dimensionLabel.snp.makeConstraints { make in
      make.top.equalTo(collectionView.snp.bottom, offset : .default)
      make.xEdges.equalToSuperview()
    }
    
    
    
  }
  
}


extension LocationDetailView : UICollectionViewDelegateFlowLayout , UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return location.residents.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! LocationCollectionViewCell
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
    let imageView = UIImageView()
    imageView.kf.setImage(with: url)
    cell.addSubview(imageView)
    cell.clipsToBounds = true
    imageView.contentMode = .scaleAspectFill
    imageView.translatesAutoresizingMaskIntoConstraints = false
    
    return cell
  }
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexpath:IndexPath) -> CGSize {
    return CGSize(width: collectionView.frame.width , height: 280)
  }
  
}
