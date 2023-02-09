//
//  PlayerView.swift
//  StateExample
//
//  Created by Boy van Amstel on 08/02/2023.
//

import SwiftUI
import YouTubePlayerKit

struct PlayerView: View {
    var body: some View {
        YouTubePlayerView("https://www.youtube.com/watch?v=UFEM4b0UnM0")
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
