//
//  GradientBlurView.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 14/05/2024.
//

import SwiftUI

struct GradientBlurView: View {
    var body: some View {
        GeometryReader { geometry in
            BlurView(style: .systemMaterial)
                .mask(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.white, Color.clear]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .frame(height: geometry.safeAreaInsets.top)
                )
                .frame(height: geometry.safeAreaInsets.top)
                .edgesIgnoringSafeArea(.top)
        }
    }
}

struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style

    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

#Preview {
    BackgroundView {
        GradientBlurView()
    }
}
