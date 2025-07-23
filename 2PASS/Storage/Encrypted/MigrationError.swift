// SPDX-License-Identifier: BUSL-1.1
//
// Copyright © 2025 Two Factor Authentication Service, Inc.
// Licensed under the Business Source License 1.1
// See LICENSE file for full terms

enum MigrationError: Error {
    case missingDestinationInstance
    case missingMigrationController
    case missingSourceValue(key: String)
}
