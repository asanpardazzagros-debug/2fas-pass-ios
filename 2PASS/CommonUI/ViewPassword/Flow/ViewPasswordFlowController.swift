// SPDX-License-Identifier: BUSL-1.1
//
// Copyright © 2025 Two Factor Authentication Service, Inc.
// Licensed under the Business Source License 1.1
// See LICENSE file for full terms

import UIKit
import Common

protocol ViewPasswordFlowControllerParent: AnyObject {
    func viewPasswordClose()
    func viewPasswordAutoFillTextToInsert(_ text: String)
}

protocol ViewPasswordFlowControlling: AnyObject {
    func toEdit(_ passwordID: PasswordID)
    func toOpenURI(_ url: URL)
    func close()
    func autoFillTextToInsert(_ text: String)
}

final class ViewPasswordFlowController: FlowController {
    private weak var parent: ViewPasswordFlowControllerParent?
    private var completion: ((PasswordProtectionLevel) -> Void)?
    
    static func push(
        on navigationController: UINavigationController,
        parent: ViewPasswordFlowControllerParent,
        passwordID: PasswordID,
        autoFillEnvironment: AutoFillEnvironment? = nil
    ) {
        let view = ViewPasswordViewController()
        view.hidesBottomBarWhenPushed = true
        let flowController = ViewPasswordFlowController(viewController: view)
        flowController.parent = parent
        let interactor = ModuleInteractorFactory.shared.viewPasswordInteractor()
                
        let presenter = ViewPasswordPresenter(
            passwordID: passwordID,
            flowController: flowController,
            interactor: interactor,
            autoFillEnvironment: autoFillEnvironment
        )
        view.presenter = presenter

        navigationController.pushViewController(view, animated: true)
    }
    
    var viewController: ViewPasswordViewController {
        _viewController as! ViewPasswordViewController
    }
}

extension ViewPasswordFlowController: ViewPasswordFlowControlling {
    func toEdit(_ passwordID: PasswordID) {
        AddPasswordNavigationFlowController.present(
            on: viewController,
            parent: self,
            editPasswordID: passwordID
        )
    }
    
    func toOpenURI(_ url: URL) {
        UIApplication.shared.openInBrowser(url)
    }
    
    func close() {
        parent?.viewPasswordClose()
    }
    
    func autoFillTextToInsert(_ text: String) {
        parent?.viewPasswordAutoFillTextToInsert(text)
    }
}

extension ViewPasswordFlowController: AddPasswordNavigationFlowControllerParent {
    func closeAddPassword(with result: SavePasswordResult) {
        _viewController.dismiss(animated: true)
    }
}
