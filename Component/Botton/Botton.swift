
import UIKit
import SnapKit

class Button : UIButton{
    
    private let normalTitleColor: TitleColor
    private let normalBackgroundColor: BackgroundColor
    
    init(title: String, color: BackgroundColor, size: ButtonSize, titleColor: TitleColor) {
        normalTitleColor = titleColor
        normalBackgroundColor = color
        super.init(frame: .zero)
        
        layer.cornerRadius = 15
        layer.borderWidth = 1
        contentEdgeInsets = UIEdgeInsets(top: 40, left: 80, bottom: 40, right: 80)
        
        if size != ButtonSize.dynamic {
            snp.makeConstraints { make in
                make.width.equalTo(size.size)
            }
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
