
import UIKit

protocol CharacterDetailDisplayable: class {
  
}

class CharacterDetailViewController: BaseViewController<CharacterDetailView>, CharacterDetailDisplayable {
  
  // MARK: Properties
  private var characters : characterModel! // call Model to use*****
  var presenter: CharacterDetailPresenter!
  
  // MARK: Initial
  convenience init(character : characterModel){
    self.init()
    self.characters = character
  }
  
  private init() {
    super.init(nibName: nil, bundle: nil)
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    show()
    
    
  }
  
  // MARK: View
  func show () {
    mainView.characterImageView.kf.setImage(with: characters.image)
    mainView.nameLabel.text = "Name: \(characters.name)"
    mainView.genderLabel.text = "Sex: \(characters.gender)"
    mainView.speciesLabel.text = "Species: \(characters.species   )"
    //mainView.locationLabel.text = characters.location
    showCreated()
    
    
  }
  
  func showCreated() {
    let input = characters.created
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
    let date = formatter.date(from: input)!
    let displayFormatter = DateFormatter()
    displayFormatter.locale = Locale(identifier: "UN") //convert date
    displayFormatter.dateStyle = .medium
    let result = displayFormatter.string(from: date)
    mainView.createdLabel.text = "Created: \(result)"
  }
  
  
}
