
import UIKit

extension UIView {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    func addSubviews(_ views: UIView...) {
        views.forEach(addSubview(_:))
    }
    
}

