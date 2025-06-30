// SPDX-License-Identifier: BUSL-1.1
//
// Copyright © 2025 Two Factor Authentication Service, Inc.
// Licensed under the Business Source License 1.1
// See LICENSE file for full terms

@Observable
final class PremiumPromptPresenter {
    
    @MainActor
    func onUpgrade() {
        NotificationCenter.default.post(name: .presentPaymentScreen, object: nil)
    }
}
