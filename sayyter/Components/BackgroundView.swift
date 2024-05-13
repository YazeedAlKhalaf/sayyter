//
//  BackgroundView.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 13/05/2024.
//

import SwiftUI

struct BackgroundView<Content: View>: View {
    let content: Content
    let layout: LayoutOption
    
    enum LayoutOption {
        case vertical
        case horizontal
    }
    
    init(@ViewBuilder content: () -> Content, layout: LayoutOption = .vertical) {
        self.content = content()
        self.layout = layout
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
