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
        
        // NavigationBar RightItem
        let plus = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: nil)
        let chat = UIBarButtonItem(image: UIImage(systemName: "message.fill"), style: .plain, target: self, action: nil)
        let bell = UIBarButtonItem(image: UIImage(systemName: "bell.fill"), style: .plain, target: self, action: nil)

        // NavigationBar LeftItem
        let tossIcon  = UIImage(named: "tossLogo")?.resizeTo(size: CGSize(width: 120, height: 300)).withTintColor(UIColor(named: "NavItems")!)
        let tossButton = UIButton()
        tossButton.setBackgroundImage(tossIcon, for: .normal)
        let tossBarButton = UIBarButtonItem(customView: tossButton)
                
        plus.tintColor = UIColor(named: "NavItems")
        chat.tintColor = UIColor(named: "NavItems")
        bell.tintColor = UIColor(named: "NavItems")
       
        navigationItem.leftBarButtonItem = tossBarButton
        navigationItem.rightBarButtonItems = [bell, chat, plus]
        
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
