import Foundation
import UIKit

protocol SearchConfiguratorProtocol {
    func resolve() -> UIViewController
}

public final class SearchConfigurator: SearchConfiguratorProtocol {
    
    func resolve() -> UIViewController {
        let view = SearchView()
        let presenter = SearchPresenter()
        let interactor = SearchInteractor(presenter: presenter)
        let router = SearchRouter()
        let viewController = SearchViewController(
            customView: view,
            router: router,
            interactor: interactor
        )
        
        router.viewController = viewController
        presenter.view = viewController
        
        return viewController
    }
}
