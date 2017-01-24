//
//  GA_CustomeNavigationView.swift
//  GA_Placer1.1.0Demo
//
//  Created by houjianan on 2016/10/19.
//  Copyright © 2016年 houjianan. All rights reserved.
//

import UIKit
import SnapKit

@objc
protocol GA_CustomeSaveNavigationViewDelegate: NSObjectProtocol {
    func closed()
    @objc optional func saved()
    @objc optional func instationLetter()
}

class GA_CustomeSaveNavigationView: GA_BaseNavigationView {

    weak var myDelegate: GA_CustomeSaveNavigationViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    lazy var titleLabel: UILabel = {
        let t = UILabel()
        t.textAlignment = .center
        
        t.font = UIFont.boldSystemFont(ofSize: 17)
        
        t.textColor = theme.kTextColor
        t.text = "选择场景"
        self.addSubview(t)
        return t
    }()
    
    lazy var savedButton: UIButton = {
        let c = UIButton()
        c.setTitle("保存", for: .normal)
        c.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        c.setTitleColor(theme.kTextColor, for: .normal)
        c.addTarget(self, action: #selector(GA_CustomeSaveNavigationView.saved), for: .touchUpInside)
        c.titleEdgeInsets.top = -15
        c.titleEdgeInsets.right = -5
        self.addSubview(c)
        return c
    }()
    
    lazy var closedButton: UIButton = {
        let c = UIButton()
        c.setImage(UIImage(named: "nav_close_black"), for: .normal)
        c.addTarget(self, action: #selector(GA_CustomeSaveNavigationView.closed), for: .touchUpInside)
        self.addSubview(c)
        return c
    }()
    
    func closed() {
        myDelegate?.closed()
    }
    
    func saved() {
        myDelegate?.saved!()
    }
    
    
    func setUI() {
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(33)
            make.centerX.equalTo(self.snp.centerX)
        }
        closedButton.snp.makeConstraints { (make) in
            make.left.bottom.equalTo(0)
        }
        savedButton.snp.makeConstraints { (make) in
            make.top.equalTo(34)
            make.right.equalTo(-15)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

