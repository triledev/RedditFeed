//
//  RedditFeedTests.swift
//  RedditFeedTests
//
//  Created by Tri Le on 11/09/21.
//

import XCTest
@testable import RedditFeed

class RedditFeedTests: XCTestCase {

  func testGetTitle() {
    let objFeedModel = getTestableViewModel()
    XCTAssertEqual(objFeedModel.getTitle(at: 0), "Test Title 1")
  }
  
  func testGetScore() {
    let objFeedModel = getTestableViewModel()
    XCTAssertEqual(objFeedModel.getScore(at: 0), "1")
  }

  func testGetNumComments() {
    let objFeedModel = getTestableViewModel()
    XCTAssertEqual(objFeedModel.getNumComments(at: 0), "1")
  }
  
  func testGetErrorDescription() {
    let objFeedModel = getTestableViewModel()
    XCTAssertEqual(objFeedModel.getErrorDescription(), "Test Error")
  }
  
  // MARK: - Create Dummy Data for Testing
  private func getTestableViewModel() -> FeedViewModel{
      let testFeeds : [ChildData] = [ChildData(title: "Test Title 1", num_comments: 1, score: 1, thumbnail: nil, thumbnail_height: nil, thumbnail_width: nil), ChildData(title: "Test Title 2", num_comments: 2, score: 2, thumbnail: nil, thumbnail_height: nil, thumbnail_width: nil)]
      let objRedditModel = FeedViewModel(errorDescription: "Test Error", rowUpdate: 1, feeds: testFeeds)
      
      return objRedditModel
  }
  
}


