//
//  Page.swift
//  StateExample
//
//  Created by Boy van Amstel on 08/02/2023.
//

import Foundation

enum Page: String, Identifiable, CaseIterable {
    var id: Self { self }

    case happyPath = "Happy Path"
    case orientationIssue = "Orientation Issue"
    case stateIssue = "State Issue"
    case orientationStateIssue = "Orientation and State Issue"
    case solution = "Solution"
}
