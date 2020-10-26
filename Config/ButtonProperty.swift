import UIKit

enum BackgroundColor {
    case orange, white
    
    var color: UIColor{
        switch self {
        case .orange: return UIColor.orange
        case .white: return UIColor.white
        }
    }
    
    var borderColor: UIColor{
        switch self {
        case .white: return UIColor.white
        case .orange: return UIColor.orange
        }
    }
}

enum ButtonSize: CGFloat{
    case small = 100
    case normal = 148
    case bottom = 315
    case dynamic = -1
    
    var size: CGFloat {
        rawValue
    }
}

enum TitleColor {
    case black, darkGray, grey, yellow, red, white, green
    var color: UIColor {
        switch self {
        case .white: return UIColor.white
        case .black: return UIColor.black
        case .darkGray: return UIColor.darkGray
        case .grey: return UIColor.gray
        case .yellow: return UIColor.yellow
        case .red: return UIColor.red
        case .green: return UIColor.green
            
        }
    }
}

