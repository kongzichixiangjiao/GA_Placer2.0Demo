//
//  GA_BaseNavigationView.swift
//  GA_Placer1.1.0Demo
//
//  Created by houjianan on 2016/10/21.
//  Copyright © 2016年 houjianan. All rights reserved.
//

import UIKit

class GA_BaseNavigationView: UIView {
    
    var isShowShadow: Bool = false {
        didSet {
            setLayerShadowColor()
        }
    }
    
    var isShowLineView: Bool = true {
        didSet {
            lineView.isHidden = isShowLineView
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
        isShowShadow = false
        isShowLineView = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setUI()
        setShadowLayer()
    }
    
    private func setLayerShadowColor() {
        if isShowShadow {
            self.layer.shadowColor = "d8d8d8".color0X.cgColor
        } else {
            self.layer.shadowColor = UIColor.clear.cgColor
        }
    }
    
    private func setShadowLayer() {
        let r: CGFloat = 5
        setLayerShadowColor()
        self.layer.masksToBounds = false
        self.layer.cornerRadius = 0
        self.layer.shadowOffset = CGSize(width: 0,height: 0)
        self.layer.shadowRadius = r
        self.layer.shadowOpacity = 0.5
        let x: CGFloat = -r
        let y: CGFloat = -r
        let w: CGFloat = frame.width + r * 2
        let h: CGFloat = frame.height + r * 2
        self.layer.shadowPath = UIBezierPath(rect: CGRect(x: x, y: y, width: w, height: h)).cgPath
    }
    
    lazy var lineView: UIView = {
        let l = UIView()
        l.backgroundColor = "e6e6e6".color0X
        self.addSubview(l)
        return l
    }()
    
    private func setUI() {
        lineView.snp.makeConstraints { (make) in
            make.left.bottom.right.equalTo(0)
            make.height.equalTo(0.5)
        }
    }
    
    
}
