//
//  OrientationIssueView.swift
//  StateExample
//
//  Created by Boy van Amstel on 08/02/2023.
//

import SwiftUI
import YouTubePlayerKit

struct OrientationIssueView: View {
    let page: Page

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

            PlayerView()
        }
    }

    private var horizontalView: some View {
        HStack {
            Text("Horizontal")
                .font(.title)
            
            PlayerView()
        }
    }
}

struct OrientationIssueView_Previews: PreviewProvider {
    static var previews: some View {
        OrientationIssueView(page: .stateIssue)
    }
}
