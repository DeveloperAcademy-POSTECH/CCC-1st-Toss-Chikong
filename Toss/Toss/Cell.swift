//
//  CollectionViewCell.swift
//  Toss
//
//  Created by Hong jeongmin on 2022/07/19.
//

import UIKit

class Cell: UICollectionViewCell {
    
    let label: UILabel = {
        let searchHistory = UILabel()
        searchHistory.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        searchHistory.textColor = .gray
        
        return searchHistory
    }()
    
    let bg: UIView = {
       let view = UIView()
        view.backgroundColor = UIColor(named: "cellColor")
        view.autoresizingMask = .flexibleHeight
        
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureLayout() {
        contentView.addSubview(bg)
        bg.translatesAutoresizingMaskIntoConstraints = false
        bg.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        bg.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        
        bg.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.trailingAnchor.constraint(equalTo: bg.trailingAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: bg.leadingAnchor).isActive = true
        label.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
}
