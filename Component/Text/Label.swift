import UIKit
import SnapKit

class Label: UILabel {
    
    private let normalFontColor: FontColor
    
    init(size: FontSize, weight: FontWeight, color: FontColor) {
        
        normalFontColor = color
        super.init(frame: .zero)
        font = UIFont.monospacedDigitSystemFont(ofSize: CGFloat(size.size), weight: weight.weight)
        textColor = normalFontColor.color
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
