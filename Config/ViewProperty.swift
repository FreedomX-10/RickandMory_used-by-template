import UIKit

enum BorderWidth: CGFloat {
    case no = 0
    case normal = 1
    
    var borderView: CGFloat{
        rawValue
    }
}

enum ViewWidth: CGFloat {
    case short = 30
    case mid = 100
    case long = 200
    
    var sizeView: CGFloat {
        rawValue
    }
}

enum ViewHeight: CGFloat {
    case small = 10
    case normal = 50
    
    var hight: CGFloat {
        rawValue
    }
}

enum BorderColorBG {
    case  black, brown, lightGray, orange, white
    var colorBG : UIColor {
        switch self {
        case .black: return UIColor.black
        case .brown: return UIColor.brown
        case .lightGray: return UIColor.lightGray
        case .orange: return UIColor.orange
        case .white: return UIColor.white
            
        }
    }
}

enum BorderColor {
    case black, white
    var color: UIColor {
        switch self {
        case .white: return UIColor.white
        case .black: return UIColor.black
            
        }
    }
}

