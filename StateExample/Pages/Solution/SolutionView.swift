//
//  SolutionView.swift
//  StateExample
//
//  Created by Boy van Amstel on 08/02/2023.
//

import SwiftUI

struct SolutionView: View {
    let page: Page
    let viewModel: SmartPlayerViewModel

    var body: some View {
        GeometryReader { proxy in
            if proxy.size.width > proxy.size.height {
                horizontalView
            } else {
                verticalView
            }
        }.navigationTitle(page.rawValue)
    }

    private var verticalView: some View {
        VStack {
            Text("Vertical")
                .font(.title)

            SmartPlayerView(viewModel: viewModel)
        }
    }

    private var horizontalView: some View {
        HStack {
            Text("Horizontal")
                .font(.title)

            SmartPlayerView(viewModel: viewModel)
        }
    }
}

struct SolutionView_Previews: PreviewProvider {
    static var previews: some View {
        SolutionView(page: .solution, viewModel: SmartPlayerViewModel())
    }
}
