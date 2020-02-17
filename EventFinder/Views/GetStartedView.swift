//
//  GetStartedView.swift
//  EventFinder
//
//  Created by German Hernandez on 17/02/2020.
//  Copyright © 2020 German Hernandez. All rights reserved.
//

import SwiftUI

struct GetStartedView: View {
    
    @ObservedObject var viewModel = GetStartedViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            NavigationLink(destination: AuthView(), isActive: $viewModel.locationIsEnabled) {
                EFButton(action: viewModel.getStartedButtonPressed, title: "Get Started")
            }
        }
        .modifier(ImageBackgroundModifier())
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
