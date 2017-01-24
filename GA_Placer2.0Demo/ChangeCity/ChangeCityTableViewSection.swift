//
//  ChangeCityTableViewSection.swift
//  GA_Placer2.0Demo
//
//  Created by houjianan on 2017/1/24.
//  Copyright © 2017年 houjianan. All rights reserved.
//

import UIKit

class ChangeCityTableViewSection: UIView {

    var title: String! {
        didSet {
           self.titleLabel.text = title
        }
    }
    
    lazy var titleLabel: UILabel = {
        let l = UILabel(frame: CGRect(x: 15, y: 0, width: self.frame.size.width, height: self.frame.size.height))
        l.font = UIFont.systemFont(ofSize: 15)
        self.addSubview(l)
        return l
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
