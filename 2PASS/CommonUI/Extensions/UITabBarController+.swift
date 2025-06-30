// SPDX-License-Identifier: BUSL-1.1
//
// Copyright © 2025 Two Factor Authentication Service, Inc.
// Licensed under the Business Source License 1.1
// See LICENSE file for full terms

import UIKit

extension UITabBarController {
    public func addTab(_ childViewController: UIViewController) {
        if let viewControllers {
            self.viewControllers = viewControllers + [childViewController]
        } else {
            self.viewControllers = [childViewController]
        }
    }
}
