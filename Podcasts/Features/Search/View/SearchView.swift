import UIKit

protocol SearchViewProtocol: UIView {
    
}

final class SearchView: UIView {
    
    private lazy var tableView: UITableView = {
       let table = UITableView()
        return table
    }()
    
}

extension SearchView: SearchViewProtocol {}
