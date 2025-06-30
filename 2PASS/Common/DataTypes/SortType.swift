// SPDX-License-Identifier: BUSL-1.1
//
// Copyright © 2025 Two Factor Authentication Service, Inc.
// Licensed under the Business Source License 1.1
// See LICENSE file for full terms

import Foundation

public enum SortType: String, CaseIterable, Hashable {
    case newestFirst
    case oldestFirst
    case az
    case za
}
