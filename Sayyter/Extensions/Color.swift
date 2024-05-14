//
//  Color.swift
//  sayyter
//
//  Created by Yazeed AlKhalaf on 14/05/2024.
//

import SwiftUI

extension Color {
    func luminance() -> Double {
        let components = UIColor(self).cgColor.components ?? [0, 0, 0]
        let r = components[0]
        let g = components[1]
        let b = components[2]
        
        // Using the Rec. 709 formula for luminance
        return 0.2126 * r + 0.7152 * g + 0.0722 * b
    }
    
    func contrastingTextColor() -> Color {
        return luminance() > 0.5 ? .night : .isabelline
    }
}
