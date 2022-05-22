import Foundation

protocol SearchBusinessLogic: AnyObject  {
    
}

final class SearchInteractor {
    
    // MARK: - Properties
    
    private let presenter: SearchPresentationLogic
    
    // MARK: - Initializer
    
    init(presenter: SearchPresentationLogic) {
        self.presenter = presenter
    }
}

extension SearchInteractor: SearchBusinessLogic {
    
}
