//
//  HomeCardActionsSection.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 14/05/2024.
//

import SwiftUI
import SFSafeSymbols

struct HomeCardActionsSection: View {
    var body: some View {
        HStack(spacing: 8) {
            IconTextButton(systemSymbol: SFSymbol.bSquareFill, text: "Payments") {
                print("payments clicked")
            }
            .frame(maxWidth: .infinity)
            
            IconTextButton(systemSymbol: SFSymbol.arrowLeftArrowRight, text: "Transfer") {
                print("transfer clicked")
            }
            .frame(maxWidth: .infinity)
            
            IconTextButton(systemSymbol: SFSymbol.chartPie, text: "Analytics") {
                print("analytics clicked")
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    BackgroundView {
        HomeCardActionsSection()
    }
}
