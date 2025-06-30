// SPDX-License-Identifier: BUSL-1.1
//
// Copyright © 2025 Two Factor Authentication Service, Inc.
// Licensed under the Business Source License 1.1
// See LICENSE file for full terms

import Foundation
import Common

extension PasswordProtectionLevel {
    var dataFieldsVaultEncryptionKey: VaultEncryptionKey {
        switch self {
        case .normal, .confirm: .trusted
        case .topSecret: .secured
        }
    }
}
