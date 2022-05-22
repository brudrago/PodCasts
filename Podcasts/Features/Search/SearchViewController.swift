import UIKit

protocol SearchDisplayLogic: AnyObject {}

final class SearchViewController: UIViewController {
    
    // MARK: - Properties
    
    private let customView: SearchViewProtocol
    private let router: SearchRoutingLogic
    private let interactor: SearchBusinessLogic
    
    // MARK: - Initializer
    
    init(
        customView: SearchViewProtocol,
        router: SearchRoutingLogic,
        interactor: SearchBusinessLogic
    ) {
        self.customView = customView
        self.router = router
        self.interactor = interactor
        
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        nil
    }
    
    // MARK: - Lifecycle

    override func loadView() {
        self.view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}

extension SearchViewController: SearchDisplayLogic {
    

}
