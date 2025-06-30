// SPDX-License-Identifier: BUSL-1.1
//
// Copyright © 2025 Two Factor Authentication Service, Inc.
// Licensed under the Business Source License 1.1
// See LICENSE file for full terms

import Foundation
import Data

extension BackupImportFileError {
    var localizedDescription: String {
        switch self {
        case .cantReadFile(let reason):
            if let reason {
                T.vaultRecoveryErrorOpenFileDetails(reason)
            } else {
                T.vaultRecoveryErrorOpenFile
            }
        }
    }
}
