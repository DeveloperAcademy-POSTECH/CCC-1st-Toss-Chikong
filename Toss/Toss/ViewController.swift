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
    let labelCellID = "label"
    
    let collection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .clear
        return collection
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationTitle()
        configureUI()
        collection.dataSource = self
        collection.register(Cell.self, forCellWithReuseIdentifier: labelCellID)

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

    func configureUI() {
        self.view.addSubview(collection)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        collection.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        collection.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        collection.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: labelCellID, for: indexPath) as! Cell
        cell.label.text = "\(tableData[indexPath.row])"
        return cell
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
