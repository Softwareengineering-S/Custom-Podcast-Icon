//
//  ContentView.swift
//  Custom Podcast Icon
//
//  Created by Monique Shaqiri on 15.05.21.
//  Copyright © 2021 Monique Shaqiri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 120, height: 120)
                .foregroundColor(.red)
        .overlay(
            Circle()
                .stroke(Color.gray, lineWidth: 2)
                .frame(width: 128, height: 128))
            
            Rectangle()
                 .frame(width: 16, height: 2)
                 .foregroundColor(.white)
            offset(y: 32)
            
            Rectangle()
                .frame(width: 2, height: 16)
                .foregroundColor(.white)
                offset(y: 24)
            
            Capsule()
                .trim(from: 1/2, to: 1)
                .stroke(Color.white, lineWidth: 2)
                .frame(width: 32, height: 42)
                .rotationEffect(.degrees(180))
                .offset(y: -6)
            
            Capsule()
                .stroke(Color.white, lineWidth: 2)
                .frame(width: 24, height: 48)
                .offset(y: -14)
            
        }.scaleEffect(2, anchor: .center)
    }
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
