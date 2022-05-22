import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarStyle()
        setNavigationTitleStyle()
        
        viewControllers = [
            createNavigationController(for: FavoritesController(), title: "Favorites", image: UIImage(named: "favorites") ?? UIImage()),
            createNavigationController(for: SearchConfigurator().resolve(), title: "Search", image: UIImage(named: "search") ?? UIImage()),
            createNavigationController(for: DownloadController(), title: "Download", image: UIImage(named: "downloads") ?? UIImage())
        ]
    }
    
    //MARK: - Private Functions
    
    fileprivate func createNavigationController(for rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        
        let navController = UINavigationController(rootViewController: rootViewController)
        
        rootViewController.navigationItem.title = title
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        return navController
    }
    
    private func setNavigationTitleStyle() {
        UINavigationBar.appearance().prefersLargeTitles = true
    }
    
    private func setTabBarStyle() {
        tabBar.tintColor = .purple
    }
}
