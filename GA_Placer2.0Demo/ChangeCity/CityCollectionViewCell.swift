//
//  CityCollectionViewCell.swift
//  GA_Placer2.0Demo
//
//  Created by houjianan on 2017/1/24.
//  Copyright © 2017年 houjianan. All rights reserved.
//

import UIKit

class CityCollectionViewCell: UICollectionViewCell {
    
    lazy var label: UILabel = {
        let l = UILabel(frame: self.bounds)
        l.textAlignment = .center
        l.font = UIFont.systemFont(ofSize: 15)
        l.ga_border(color: "e6e6e6".color0X, bgColor: "f5f5f5".color0X)
        return l
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.backgroundColor = UIColor.white
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        contentView.addSubview(label)
    }
}
