import UIKit

enum FontSize: CGFloat {
    case header = 25
    case title = 20
    case subtitle = 18
    case info = 14
    case body = 12
    case small = 10
    
    var size: CGFloat {
        rawValue
    }
}

enum FontWeight {
    case normal, bold
    
    var weight: UIFont.Weight {
        switch self {
        case .normal: return .regular
        case .bold: return .bold
        }
    }
}

enum FontColor {
    case black, white, red, green, blue, orange
    var color: UIColor {
        switch self {
        case .black: return UIColor.black
        case .white: return UIColor.white
        case .red: return UIColor.red
        case .green: return UIColor.green
        case .blue: return UIColor.blue
        case .orange: return UIColor.orange
        }
    }
}
