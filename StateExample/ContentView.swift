//
//  ContentView.swift
//  StateExample
//
//  Created by Boy van Amstel on 08/02/2023.
//

import SwiftUI

struct ContentView: View {
    private let viewModel = SmartPlayerViewModel()

    var body: some View {
        NavigationStack {
            List(Page.allCases) { page in
                NavigationLink(page.rawValue, value: page)
            }.navigationDestination(for: Page.self) { page in
                switch page {
                case .happyPath: HappyPathView(page: page)
                case .orientationIssue: OrientationIssueView(page: page)
                case .stateIssue: StateIssueView(page: page)
                case .orientationStateIssue: OrientationStateIssueView(page: page)
                case .solution: SolutionView(page: page, viewModel: viewModel)
                }
            }.navigationTitle("Pages")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
