// SPDX-License-Identifier: BUSL-1.1
//
// Copyright © 2025 Two Factor Authentication Service, Inc.
// Licensed under the Business Source License 1.1
// See LICENSE file for full terms

import UIKit
import SwiftUI

public final class LoginViewController: UIViewController {
    public var presenter: LoginPresenter!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
                
        let vc = UIHostingController(rootView: LoginView(presenter: presenter))
        placeChild(vc)
    }
}
