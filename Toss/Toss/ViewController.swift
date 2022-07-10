//
//  ViewController.swift
//  Toss
//
//  Created by Hong jeongmin on 2022/07/03.
//

import UIKit

class ViewController: UIViewController {
    var tableView = UITableView()
    var tableData = ["토스뱅크", "자산", "소비"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationTitle()
        setTableView()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setNavigationTitle() {
        // NavigationBar RightItem
        let plus = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: nil)
        let chat = UIBarButtonItem(image: UIImage(systemName: "message.fill"), style: .plain, target: self, action: nil)
        let bell = UIBarButtonItem(image: UIImage(systemName: "bell.fill"), style: .plain, target: self, action: nil)

        // NavigationBar LeftItem
        let tossIcon  = UIImage(named: "tossLogo")?.resizeTo(size: CGSize(width: 120, height: 300)).withTintColor(UIColor(named: "NavItems")!)
        let tossButton = UIButton()
        tossButton.setBackgroundImage(tossIcon, for: .normal)
        let tossBarButton = UIBarButtonItem(customView: tossButton)

        navigationItem.leftBarButtonItem = tossBarButton
        navigationItem.rightBarButtonItems = [bell, chat, plus]
    }
    
    func setTableView() {
        // TableView
        tableView = UITableView(frame: self.view.bounds, style: .plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = UIColor(named: "cellColor")
        tableView.separatorColor = UIColor(named: "cellColor")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        view.addSubview(tableView)
    }
}

extension UIImage {
    func resizeTo(size: CGSize) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: size)
        let image = renderer.image { _ in
            self.draw(in: CGRect.init(origin: CGPoint.zero, size: size))
        }
        
        return image.withRenderingMode(self.renderingMode)
    }
}

// 어떠한 동작을 수행 ( 유저와의 상호 작용 )
extension ViewController: UITableViewDelegate {
    
}

// 테이블의 내용 ( 리턴할 갯수, 내용물 )
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(tableData[indexPath.row])"
        
        return cell
    }
}
