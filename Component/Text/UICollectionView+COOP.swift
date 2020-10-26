import UIKit

extension UICollectionView {
  
  func register(_ cellType: UICollectionViewCell.Type) {
    register(cellType, forCellWithReuseIdentifier: cellType.identifier)
  }
  
  func dequeue<Cell: UICollectionViewCell>(_ cellType: Cell.Type, at indexPath: IndexPath) -> Cell {
    return dequeueReusableCell(withReuseIdentifier: Cell.identifier, for: indexPath) as! Cell
  }
}
