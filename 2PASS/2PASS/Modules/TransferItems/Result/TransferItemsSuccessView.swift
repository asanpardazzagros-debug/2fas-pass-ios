// SPDX-License-Identifier: BUSL-1.1
//
// Copyright © 2025 Two Factor Authentication Service, Inc.
// Licensed under the Business Source License 1.1
// See LICENSE file for full terms

import SwiftUI
import CommonUI
import Common

struct TransferItemsSuccessView: View {
    
    let onClose: Callback
    
    var body: some View {
        ResultView(
            kind: .success,
            title: Text(T.transferImportingSuccessTitle.localizedKey),
            description: Text(T.transferImportingSuccessDescription.localizedKey),
            action: {
                Button(T.commonContinue.localizedKey) {
                    onClose()
                }
            }
        )
    }
}
