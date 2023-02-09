//
//  OrientationStateIssueView.swift
//  StateExample
//
//  Created by Boy van Amstel on 08/02/2023.
//

import SwiftUI

struct OrientationStateIssueView: View {
    let page: Page

    @State
    private var randomNumber = 0

//    private let counterView = CounterView()

    var body: some View {
        GeometryReader { proxy in
            if proxy.size.width > proxy.size.height {
                horizontalView
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            } else {
                verticalView
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }.navigationTitle(page.rawValue)
    }

    private var horizontalView: some View {
        HStack {
            randomNumberView

            CounterView()
//            counterView
        }
    }

    private var verticalView: some View {
        VStack {
            randomNumberView

            CounterView()
//            counterView
        }
    }

    // https://www.avanderlee.com/swiftui/stateobject-observedobject-differences/
    private var randomNumberView: some View {
        VStack {
            Text("Random number is: \(randomNumber)")
            Button("Randomize number") {
                randomNumber = (0..<1000).randomElement()!
            }
        }.padding(.bottom)
    }
}

struct OrientationStateIssueView_Previews: PreviewProvider {
    static var previews: some View {
        OrientationStateIssueView(page: .orientationStateIssue)
    }
}
