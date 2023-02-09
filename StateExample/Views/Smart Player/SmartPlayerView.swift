//
//  SmartPlayerView.swift
//  StateExample
//
//  Created by Boy van Amstel on 08/02/2023.
//

import SwiftUI
import YouTubePlayerKit

struct SmartPlayerView: View {
    let viewModel: SmartPlayerViewModel

    var body: some View {
        YouTubePlayerView(viewModel.player)
    }
}

extension SmartPlayerView: Equatable {
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.viewModel == rhs.viewModel
    }
}

struct SmartPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        SmartPlayerView(viewModel: SmartPlayerViewModel())
    }
}
