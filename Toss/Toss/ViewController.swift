//
//  ViewController.swift
//  Toss
//
//  Created by Hong jeongmin on 2022/07/03.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.view.backgroundColor = UIColor(named: "BgColor")
        
        let plus = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: nil)
        let chat = UIBarButtonItem(image: UIImage(systemName: "message.fill"), style: .plain, target: self, action: nil)
        let bell = UIBarButtonItem(image: UIImage(systemName: "bell.fill"), style: .plain, target: self, action: nil)
        
        plus.tintColor = UIColor.gray
        chat.tintColor = UIColor.gray
        bell.tintColor = UIColor.gray
        
        navigationItem.rightBarButtonItems = [bell, chat, plus]
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "toss", style: .plain, target: nil, action: nil)
        navigationItem.leftBarButtonItem?.tintColor = .gray
        
    }
}
