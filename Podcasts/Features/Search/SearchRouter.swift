import UIKit

protocol SearchRoutingLogic: AnyObject {}

final class SearchRouter: SearchRoutingLogic {
    
    weak var viewController: UIViewController?
    
}
