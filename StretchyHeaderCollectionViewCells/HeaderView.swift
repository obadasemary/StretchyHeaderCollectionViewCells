//
//  HeaderView.swift
//  StretchyHeaderCollectionViewCells
//
//  Created by Abdelrahman Mohamed on 24.12.2018.
//  Copyright © 2018 Abdelrahman Mohamed. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    let imageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "stretchy_header"))
        iv.contentMode = .scaleAspectFill
        return iv
    }()
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // custom code for layout
        backgroundColor = .red
        
        addSubview(imageView)
        imageView.fillSuperview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
