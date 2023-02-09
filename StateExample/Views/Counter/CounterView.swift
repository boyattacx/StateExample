//
//  CounterView.swift
//  StateExample
//
//  https://www.avanderlee.com/swiftui/stateobject-observedobject-differences/
//

import SwiftUI

final class CounterViewModel: ObservableObject {
    @Published
    private(set) var count = 0

    func incrementCounter() {
        count += 1
    }
}

struct CounterView: View {
    @ObservedObject
    var viewModel = CounterViewModel()

    var body: some View {
        VStack {
            Text("Count is: \(viewModel.count)")
            Button("Increment Counter") {
                viewModel.incrementCounter()
            }
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
