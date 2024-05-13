//
//  HomeHeaderSection.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 14/05/2024.
//

import SwiftUI
import SFSafeSymbols

struct HomeHeaderSection: View {
    var body: some View {
        HStack {
            IconButton(systemSymbol: SFSymbol.bellBadge) {
                print("notifications clicked!")
            }
            IconButton(systemSymbol: SFSymbol.magnifyingglass) {
                print("search clicked!")
            }
            
            Spacer()
            
            IconButton(systemSymbol: SFSymbol.qrcodeViewfinder, type: .primary) {
                print("qr code view finder clicked!")
            }
        }
    }
}

#Preview {
    BackgroundView {
        HomeHeaderSection()
    }
}
