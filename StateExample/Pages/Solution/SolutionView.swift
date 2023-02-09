//
//  SolutionView.swift
//  StateExample
//
//  Created by Boy van Amstel on 08/02/2023.
//

import SwiftUI

extension GeometryProxy {
    var isHorizontal: Bool { size.width > size.height }
}

struct SolutionView: View {
    let page: Page

    var body: some View {
        GeometryReader { proxy in
            VStack {
                if !proxy.isHorizontal {
                    Text("Vertical")
                        .font(.title)
                }
                HStack {
                    if proxy.isHorizontal {
                        Text("Horizontal")
                            .font(.title)
                    }
                    PlayerView()
                }
            }
        }.navigationTitle(page.rawValue)
    }
}

struct SolutionView_Previews: PreviewProvider {
    static var previews: some View {
        SolutionView(page: .solution)
    }
}
