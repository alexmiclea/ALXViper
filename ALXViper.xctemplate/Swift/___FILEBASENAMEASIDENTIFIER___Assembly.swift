import UIKit

// MARK: - ___VARIABLE_viperModuleName___Assembly

struct ___VARIABLE_viperModuleName___Assembly {

    static func createModule() -> UIViewController {
        let viewController =  ___VARIABLE_viperModuleName___ViewController()
        let presenter = ___VARIABLE_viperModuleName___Presenter()
        let interactor = ___VARIABLE_viperModuleName___Interactor()
        viewController.presenter = presenter
        presenter.router = ___VARIABLE_viperModuleName___Router()
        presenter.view = viewController
        presenter.interactor = interactor
        interactor.presenter = presenter
        return viewController
    }

}
