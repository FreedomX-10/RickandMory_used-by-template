import UIKit
import SnapKit

// MARK: Constraint MakerExtendable

extension ConstraintMakerExtendable {
    
    @discardableResult
    func equalToSuperview(offset: Spacing) -> ConstraintMakerEditable {
        equalToSuperview().offset(offset.value)
    }
    
    @discardableResult
    func equalToSuperview(inset: Spacing) -> ConstraintMakerEditable {
        equalToSuperview().inset(inset.value)
    }
    
    @discardableResult
    func equalTo(_ other: ConstraintRelatableTarget, offset: Spacing) -> ConstraintMakerEditable {
        equalTo(other).offset(offset.value)
    }
    
    @discardableResult
    func equalTo(_ offset: Spacing) -> ConstraintMakerEditable {
        equalTo(offset.value)
    }
    
    @discardableResult
    func equalToSuperview(offset: CGFloat) -> ConstraintMakerEditable {
        equalToSuperview().offset(offset)
    }
    
    @discardableResult
    func equalTo(_ other: ConstraintRelatableTarget, offset: CGFloat) -> ConstraintMakerEditable {
        equalTo(other).offset(offset)
    }
    
    @discardableResult
    func equalTo(_ other: ConstraintRelatableTarget, inset: CGFloat) -> ConstraintMakerEditable {
        equalTo(other).inset(inset)
    }
    
}

// MARK: ConstraintMaker

extension ConstraintMaker {
    
    var xEdges: ConstraintMakerExtendable {
        leading.trailing
    }
    
    var yEdges: ConstraintMakerExtendable {
        top.bottom
    }
    
}

// MARK: UIView

extension UIView {
    
    var layoutGuide: UILayoutGuide {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide
        } else {
            return self.layoutMarginsGuide
        }
    }
    
}
