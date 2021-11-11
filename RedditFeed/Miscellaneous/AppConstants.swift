//
//  AppConstants.swift
//  RedditFeed
//
//  Created by Tri Le on 11/09/21.
//

import Foundation

enum AppConstantsURL {
    static let baseURL = "http://www.reddit.com/.json"
    static let after = "afterLink"
    static let feedURL = "\(baseURL)?after=+\(after)"
}

enum customFontSize {
    static let boldFontSize = 16.0
    static let spacingBetweenViews = 6
}
