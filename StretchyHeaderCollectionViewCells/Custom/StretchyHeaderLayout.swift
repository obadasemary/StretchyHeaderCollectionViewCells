//
//  StretchyHeaderLayout.swift
//  StretchyHeaderCollectionViewCells
//
//  Created by Abdelrahman Mohamed on 4.01.2019.
//  Copyright © 2019 Abdelrahman Mohamed. All rights reserved.
//

import UIKit

class StretchyHeaderLayout: UICollectionViewFlowLayout {

    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        
        let layoutAttributes = super.layoutAttributesForElements(in: rect)
        
        layoutAttributes?.forEach({ (attributes) in
            
            if attributes.representedElementKind == UICollectionView.elementKindSectionHeader {
                
                guard let collectionView = collectionView else { return }
                
                let width = collectionView.frame.width
                
                attributes.frame = CGRect(x: 0, y: 0, width: width, height: attributes.frame.height)
            }
        })
        
        return layoutAttributes
    }
}
