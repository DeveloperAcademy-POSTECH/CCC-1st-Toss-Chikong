//
//  SceneDelegate.swift
//  Toss
//
//  Created by Hong jeongmin on 2022/07/03.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // 가져온 친구(UIWindowScene)가 비어있으면 리턴해준다
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // 윈도우 크기 설정
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // 뷰컨트롤러 인스턴스 가져오기
        let mainVC = ViewController()
        
        // 네비게이션 컨트롤러 설정
        // 스택으로 쌓이는데 ViewController를 먼서 쌓음
        let navVC = UINavigationController(rootViewController: mainVC)
        
        // 뿌리 뷰 컨트롤러를 설정
        window?.rootViewController = navVC
        
        // 설정한 윈도우를 보이게 끔 설정
        window?.makeKeyAndVisible()
        
        // 윈도우 씬 설정
        window?.windowScene = windowScene
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
    
}
