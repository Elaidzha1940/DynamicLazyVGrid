//  /*
//
//  Project: DynamicLazyVGrid
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 02.10.2023
//
//  */

import SwiftUI

enum Animation {
    
    case first (CGFloat)
    case second (CGFloat)
    case third (CGFloat)
    
    mutating func next() {
        switch self {
        case .first:
            self = .second(120)
        case .second:
            self = .third(100)
        case .third:
            self = .first(180)
        }
    }
    
    var resize: CGFloat {
        switch self {
            .first(let resize),
            .second(let resize),
            .third(let resize) :
            return resize
        }
    }
}


struct SquareAnimate: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SquareAnimate()
}
