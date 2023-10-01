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
        case .first(let resize),
                .second(let resize),
                .third(let resize) :
            return resize
        }
    }
    
    var isSecond: Bool {
        switch self {
        case .second:
            return true
        default:
            return false
        }
    }
    
    var isThird: Bool {
        switch self {
        case .third:
            return true
        default:
            return false
        }
    }
}

struct SquareAnimate: View {
    @State var Height: CGFloat = 120
    @State var heightSecond: CGFloat = 150
    
    @State var animation: Animation = .first(200)
    
    var body: some View {

        ZStack {
            
            RoundedRectangle(cornerRadius: 2, style: .circular)
                .frame(width: 30, height: 25)
                .foregroundColor(.black)
                .cornerRadius(5)
            
            Rectangle()
                .frame(width: 30, height: 2)
                .offset(x: animation.isSecond ? 0 : 30)
            Rectangle()
                .frame(width: 2, height: 20)
                .offset(y: animation.isSecond ? 0 : 25)
            
            Rectangle()
                .frame(width: 2, height: 20)
                .offset(x: 5, y: animation.isThird ? 0 : 25)
            Rectangle()
                .frame(width: 2, height: 20)
                .offset(x: -5, y: animation.isThird ? 0 : -25)
            
        }
        .foregroundColor(.white)
        .onTapGesture {
            withAnimation {
                animation.next()
                Height = animation.resize
            }
        }
    }
}

#Preview {
    SquareAnimate()
}
