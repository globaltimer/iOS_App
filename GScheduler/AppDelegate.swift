
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // フォント
        let megrim = "Quicksand"
        
//       UILabel.appearance().font = UIFont(name: megrim, size: 14)
        
        //UITabBar.appearance().backgroundColor = UIColor.blue
        
        // タブバーのアイコン(フォーカス(=選択された状態)時)
        UITabBar.appearance().tintColor =  UIColor(red:0.13, green:0.55, blue:0.83, alpha:1.0)
        
        
        // タブバーのテキストのラベル
        UITabBarItem.appearance().setTitleTextAttributes(
            [ NSFontAttributeName: UIFont(name: megrim, size: 12) as Any,
              NSForegroundColorAttributeName: UIColor(red:0.13, green:0.55, blue:0.83, alpha:1.0) as Any
            ]
            , for: .normal)
        
        
        // ナビゲーションバーのタイトル
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0),
             NSFontAttributeName: UIFont(name: megrim, size: 18) as Any
        ]
        
        // ナビゲーションバーのボタン
//        UINavigationBar.appearance().tintColor = UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0)
        
        // 右のボタンはなぜかきかないため、SBで直接指定している
        UIBarButtonItem.appearance().setTitleTextAttributes([NSFontAttributeName: UIFont(name: megrim, size: 18) as Any,
            NSForegroundColorAttributeName: UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0),
        ], for: .normal)
            
        
        // ナビゲーションバーの背景色
        UINavigationBar.appearance().barTintColor = UIColor(red:0.22, green:0.62, blue:0.67, alpha:1.0)
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}
