// SPDX-License-Identifier: BUSL-1.1
//
// Copyright © 2025 Two Factor Authentication Service, Inc.
// Licensed under the Business Source License 1.1
// See LICENSE file for full terms

import SwiftUI

enum HalfwayRouteDestination: Identifiable {
    case createMasterPassword
    
    var id: String {
        switch self {
        case .createMasterPassword:
            return "createMasterPassword"
        }
    }
}

@Observable
final class HalfwayPresenter {
    
    var destination: HalfwayRouteDestination?
    
    func onCreateMasterPasswordTap() {
        destination = .createMasterPassword
    }
}
