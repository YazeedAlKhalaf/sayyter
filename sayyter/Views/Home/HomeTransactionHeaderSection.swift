//
//  HomeTransactionHeaderSection.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 14/05/2024.
//

import SwiftUI

struct HomeTransactionHeaderSection: View {
    var body: some View {
        HStack(alignment: .center) {
            Text("Recent transaction")
                .font(MyFonts.title)
            
            Spacer()
            
            Button(action: {
                print("see all transactions clicked!")
            }, label: {
                Text("See all")
            })
            .tint(.maize)
        }
    }
}

#Preview {
    BackgroundView {
        HomeTransactionHeaderSection()
    }
}
