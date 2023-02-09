//
//  HappyPathView.swift
//  StateExample
//
//  Created by Boy van Amstel on 08/02/2023.
//

import SwiftUI
import YouTubePlayerKit

struct HappyPathView: View {
    let page: Page

    var body: some View {
        PlayerView()
            .navigationTitle(page.rawValue)
    }
}

struct HappyPathView_Previews: PreviewProvider {
    static var previews: some View {
        HappyPathView(page: .happyPath)
    }
}
