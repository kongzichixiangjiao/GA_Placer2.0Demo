//
//  ViewController.swift
//  GA_Placer2.0Demo
//
//  Created by houjianan on 2017/1/24.
//  Copyright © 2017年 houjianan. All rights reserved.
//

import UIKit

private let kCities = "cities"
private let kSectionTitle = "sectionTitle"
class GA_ChangeCityViewController: UIViewController {
    
    let data = [[kSectionTitle : "热门城市",
                 kCities : ["北京", "上海", "广州", "深圳"]],
                [kSectionTitle : "更多城市",
                 kCities : ["北京", "上海", "广州", "深圳", "北京", "上海", "广州", "深圳"]]]
    
    fileprivate let kSectionHeight: CGFloat = 44
    
    lazy var navigationView: GA_CustomeSaveNavigationView = {
        let n = GA_CustomeSaveNavigationView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 66))
        n.myDelegate = self
        n.savedButton.isHidden = true
        n.isShowLineView = false
        n.titleLabel.text = "切换城市"
        self.view.addSubview(n)
        return n
    }()
 
    lazy var headerView: ChangeCityHeaderView = {
        let h = ChangeCityHeaderView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 45))
        h.address = "北京"
        return h
    }()
    
    lazy var tableView: UITableView = {
        let t = UITableView(frame: CGRect(x: 0, y: 66, width: self.view.frame.size.width, height: self.view.frame.size.height))
        
        t.register(ChangeCityTableViewCell.self, forCellReuseIdentifier: kChangeCityTableViewCell)
        
        t.separatorStyle = .none
        t.separatorInset = UIEdgeInsetsMake(10, 0, 0, 0)
        t.showsVerticalScrollIndicator = false
        t.backgroundColor = UIColor.white
        t.showsHorizontalScrollIndicator = false
        t.delegate = self
        t.dataSource = self
        
        t.tableHeaderView = self.headerView
        
        self.view.addSubview(t)
        return t
    }()
    
    lazy var bottomLabel: UILabel = {
        let l = UILabel(frame: CGRect())
        l.textAlignment = .center
        l.font = UIFont.systemFont(ofSize: 15)
        l.textColor = "c8c6ce".color0X
        l.text = "更多城市，敬请期待~"
        self.view.addSubview(l)
        return l
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(tableView)
        print(navigationView)
        bottomLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view.snp.centerX)
            make.bottom.equalTo(self.view.snp.bottom).offset(-20)
        }
    }
    
    lazy var selectedCityHandler: ChangeCityTableViewCell.SelectedCityHandler = {
        [weak self] city in
        if let weakSelf = self {
            weakSelf.headerView.address = city
        }
    }
}

extension GA_ChangeCityViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kChangeCityTableViewCell) as! ChangeCityTableViewCell
        let section = indexPath.section
        cell.data = data[section][kCities] as! [String]
        cell.selectedCityHandler = selectedCityHandler
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let v = ChangeCityTableViewSection(frame: CGRect(x: 15, y: 0, width: tableView.frame.size.width, height: kSectionHeight))
        v.title = data[section][kSectionTitle] as! String
        return v
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return kSectionHeight
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let space: CGFloat = 0
        let s = indexPath.section
        let count = (data[s][kCities] as! [String]).count
        let a = CGFloat((count / 3) * 50)
        let b = CGFloat((count % 3 == 0) ? 0 : 50)
        return a + b + space
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension GA_ChangeCityViewController: GA_CustomeSaveNavigationViewDelegate {
    func closed() {
        self.dismiss(animated: true, completion: nil)
    }
}
