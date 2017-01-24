//
//  ChangeCityTableViewCell.swift
//  GA_Placer2.0Demo
//
//  Created by houjianan on 2017/1/24.
//  Copyright © 2017年 houjianan. All rights reserved.
//

import UIKit

let kChangeCityTableViewCell = "ChangeCityTableViewCell"
class ChangeCityTableViewCell: UITableViewCell {
    
    var data = [String]()
    
    typealias SelectedCityHandler = (_ city: String)->()
    var selectedCityHandler: SelectedCityHandler!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if !self.isEqual(nil) {
            initCollectionView()
        }
    }
    
    func initCollectionView() {
        contentView.addSubview(changeCityCollectionView!)
    }
    
    lazy var changeCityCollectionView: UICollectionView? = {
        let c = UICollectionView(frame: self.bounds, collectionViewLayout: ChangeCityCollectionViewLayout())
        c.isUserInteractionEnabled = true
        c.delegate = self
        c.dataSource = self
        c.bounces = false
        c.isPagingEnabled = true
        c.showsVerticalScrollIndicator = false
        c.showsHorizontalScrollIndicator = false
        c.contentInset = UIEdgeInsetsMake(0, 15, 0, 15)
        c.backgroundColor = UIColor.white
        self.addSubview(c)
        
        c.register(CityCollectionViewCell.self, forCellWithReuseIdentifier: "CityCollectionViewCell")
        
        return c
    }()
    
    func reloadCell() {
        changeCityCollectionView?.reloadData()
    }
}

extension ChangeCityTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CityCollectionViewCell", for: indexPath) as! CityCollectionViewCell
        cell.label.text = data[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedCityHandler(data[indexPath.row])
    }
}

// MARK: GA_SplitScreenLayout
private class ChangeCityCollectionViewLayout: UICollectionViewFlowLayout {
    /// 准备布局
    fileprivate override func prepare() {
        super.prepare()
        if let c = collectionView {
            let space: CGFloat = 15
            let w: CGFloat = c.frame.size.width - space * 4
            itemSize = CGSize(width: w / 3, height: 35)
            minimumLineSpacing = space // cell竖直方向距离
            minimumInteritemSpacing = space
            scrollDirection = .vertical // .horizontal
        }
    }
}
