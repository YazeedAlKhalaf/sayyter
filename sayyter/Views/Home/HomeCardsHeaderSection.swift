//
//  HomeCardsHeaderSection.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 14/05/2024.
//

import SwiftUI
import SFSafeSymbols

struct HomeCardsHeaderSection: View {
    var body: some View {
        HStack(alignment: .center) {
            Text("My cards")
                .font(MyFonts.title)
            IconButton(systemSymbol: SFSymbol.plus) {
                print("add card clicked!")
            }
            
            Spacer()
            
            Button(action: {
                print("see all cards clicked!")
            }, label: {
                Text("See all")
            })
            .tint(.maize)
        }
    }
}

#Preview {
    BackgroundView {
        HomeCardsHeaderSection()
    }
}
