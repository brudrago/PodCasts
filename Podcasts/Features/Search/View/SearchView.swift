import UIKit
import SnapKit

protocol SearchViewProtocol: UIView {
    
}

final class SearchView: UIView {
    
    private lazy var tableView: UITableView = {
       let table = UITableView()
        return table
    }()
    
}

extension SearchView: ViewCodeProtocol {
    func setupSubviews() {
        
    }
    
    func setupConstraints() {
        
    }
}

extension SearchView: SearchViewProtocol {}
