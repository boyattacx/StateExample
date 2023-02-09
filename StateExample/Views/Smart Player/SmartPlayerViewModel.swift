//
//  SmartPlayerViewModel.swift
//  StateExample
//
//  Created by Boy van Amstel on 08/02/2023.
//

import SwiftUI
import YouTubePlayerKit

class SmartPlayerViewModel: Equatable {
    let urlString = "https://www.youtube.com/watch?v=UFEM4b0UnM0"
    let player: YouTubePlayer

    init() {
        player = YouTubePlayer(stringLiteral: urlString)
    }
}

extension SmartPlayerViewModel {
    static func == (lhs: SmartPlayerViewModel, rhs: SmartPlayerViewModel) -> Bool {
        return lhs.urlString == rhs.urlString
    }
}

