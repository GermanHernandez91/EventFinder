//
//  EFButton.swift
//  EventFinder
//
//  Created by German Hernandez on 17/02/2020.
//  Copyright © 2020 German Hernandez. All rights reserved.
//

import SwiftUI

struct EFButton: View {
    
    var action: () -> Void
    var title: String
    
    var body: some View {
        Button(action: action) {
            HStack {
                Spacer()
                Text(title).fontWeight(.bold)
                Spacer()
            }
        }
        .modifier(ButtonModifier())
    }
}

struct EFButton_Previews: PreviewProvider {
    static var previews: some View {
        EFButton(action: {}, title: "Get Started")
    }
}
