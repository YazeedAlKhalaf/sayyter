//
//  IconButton.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 13/05/2024.
//

import SwiftUI
import SFSafeSymbols

struct IconButton: View {
    let systemSymbol: SFSymbol
    let size: CGFloat
    let action: () -> Void
    let type: IconButtonType
    
    enum IconButtonType {
        case primary
        case secondary
    }

    init(systemSymbol: SFSymbol, size: CGFloat = 28, type: IconButtonType = .secondary, action: @escaping () -> Void) {
        self.systemSymbol = systemSymbol
        self.size = size
        self.action = action
        self.type = type
    }

    var body: some View {
        Button(action: action) {
            Image(systemSymbol: systemSymbol)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .tint(tint)
        .frame(width: size / 1.5, height: size / 1.5)
        .padding(size / 2)
        .background(background)
        .cornerRadius(size / 2)
    }
    
    private var background: Color {
        switch type {
        case .primary:
            return .maize
        case .secondary:
            return .erieBlack
        }
    }
    
    private var tint: Color {
        switch type {
        case .primary:
            return .night
        case .secondary:
            return .isabelline
        }
    }
}

struct IconButton_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView {
            IconButton(systemSymbol: SFSymbol.bellBadge, type: .primary) {
                print("clicked the button!")
            }
            
            IconButton(systemSymbol: SFSymbol.bellBadge, type: .secondary) {
                print("clicked the button!")
            }
        }
    }
}
