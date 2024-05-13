//
//  IconTextButton.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 13/05/2024.
//

import SwiftUI
import SFSafeSymbols

struct IconTextButton: View {
    let systemSymbol: SFSymbol
    let text: String
    let action: () -> Void

    init(systemSymbol: SFSymbol, text: String, action: @escaping () -> Void) {
        self.systemSymbol = systemSymbol
        self.text = text
        self.action = action
    }

    var body: some View {
        Button(action: action) {
            VStack {
                Image(systemSymbol: systemSymbol)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                Text(text)
                    .font(MyFonts.body)
                    .lineLimit(1)
            }
            .padding(.vertical, 16)
            .padding(.horizontal, 10)
            .frame(maxWidth: .infinity)
        }
        .tint(.isabelline)
        .background(Color.erieBlack)
        .cornerRadius(16)
    }
}

#Preview {
    BackgroundView {
        IconTextButton(systemSymbol: SFSymbol.bellBadge, text: "Payments") {
            print("clicked the button!")
        }
    }
}
