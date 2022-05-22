import Foundation

protocol SearchPresentationLogic {}

final class SearchPresenter: SearchPresentationLogic {
    
    weak var view: SearchDisplayLogic?
}

