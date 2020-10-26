import UIKit

class BaseViewController<MainView: UIView>: UIViewController {
    
  var mainView: MainView {
    view as! MainView
  }
  
  override func loadView() {
    view = MainView()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    resetBackground()
  }
  
  private func resetBackground() {
    view.backgroundColor = .white
  }
  
}
