

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      window = UIWindow()
    
    let selectViewController = SelectViewController()
    let router = SelectRouter(viewController: selectViewController)
    let presenter = SelectPresenter(view: selectViewController, router: router )
    selectViewController.presenter = presenter
    window?.rootViewController = UINavigationController(rootViewController: selectViewController)
    window?.makeKeyAndVisible()
    return true
  }

}

