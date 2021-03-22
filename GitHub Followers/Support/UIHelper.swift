//
//  UIHelper.swift
//  GitHub Followers
//
//  Created by Ante on 11.03.2021..
//

import UIKit

enum UIHelper {
    
    // Does my ViewController need to know about this? NO -> move!
    
    static func createThreeColumnFlowLayout(_ view: UIView) -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding: CGFloat = 12 // edges
        let minimumSpacing: CGFloat = 10
        let cellWidth = (width - 2 * padding - 2 * minimumSpacing) / 3      // depends of the iPhone model
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: cellWidth, height: cellWidth + 40)      // height: picture + title + padding
        
        return flowLayout
    }
}
