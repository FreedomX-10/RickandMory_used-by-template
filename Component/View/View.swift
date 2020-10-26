
import UIKit
import SnapKit

class ContainerView : UIView {
    private let normalBorderWidth: BorderWidth
    private let normalBackgroundColor: BorderColorBG
    
    init(borderView: BorderWidth, sizeView: ViewWidth, hight: ViewHeight, colorBG: BorderColorBG){
        normalBorderWidth = borderView
        normalBackgroundColor = colorBG
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
