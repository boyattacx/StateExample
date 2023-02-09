//
//  StateIssueView.swift
//  StateExample
//
//  Created by Boy van Amstel on 08/02/2023.
//

import SwiftUI

struct StateIssueView: View {
    let page: Page

    @State
    private var randomNumber = 0

    var body: some View {
        VStack {
            // https://www.avanderlee.com/swiftui/stateobject-observedobject-differences/
            VStack {
                Text("Random number is: \(randomNumber)")
                Button("Randomize number") {
                    randomNumber = (0..<1000).randomElement()!
                }
            }.padding(.bottom)

            CounterView()
        }.navigationTitle(page.rawValue)
    }
}

struct StateIssueView_Previews: PreviewProvider {
    static var previews: some View {
        StateIssueView(page: .stateIssue)
    }
}
