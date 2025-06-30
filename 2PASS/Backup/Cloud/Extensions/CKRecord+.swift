// SPDX-License-Identifier: BUSL-1.1
//
// Copyright © 2025 Two Factor Authentication Service, Inc.
// Licensed under the Business Source License 1.1
// See LICENSE file for full terms

import Foundation
import CloudKit

extension CKRecord {
    func encodeSystemFields() -> Data {
        let encoder = NSKeyedArchiver(requiringSecureCoding: true)
        encodeSystemFields(with: encoder)
        encoder.finishEncoding()
        return encoder.encodedData
    }
}
