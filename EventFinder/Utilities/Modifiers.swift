//
//  Modifiers.swift
//  EventFinder
//
//  Created by German Hernandez on 17/02/2020.
//  Copyright © 2020 German Hernandez. All rights reserved.
//

import SwiftUI

struct ImageBackgroundModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Constants.Images.backgroundImage)
            .aspectRatio(contentMode: .fill)
            .opacity(0.7)
    }
}


struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .shadow(radius: 10, x: 0, y: 10)
            .padding()
    }
}
