//
//  BackgroundView.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 13/05/2024.
//

import SwiftUI

struct BackgroundView<Content: View>: View {
    let layout: LayoutOption
    let content: Content
    
    enum LayoutOption {
        case vertical
        case horizontal
    }
    
    init(layout: LayoutOption = .vertical, @ViewBuilder content: () -> Content) {
        self.layout = layout
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            Color.night
                .ignoresSafeArea()
            
            layoutView
        }
        .preferredColorScheme(.dark)
    }
    
    private var layoutView: some View {
        Group {
            switch layout {
            case .vertical:
                VStack {
                    content
                }
            case .horizontal:
                HStack {
                    content
                }
            }
        }
    }
}

#Preview {
    BackgroundView {
        Text("test text")
    }
}
