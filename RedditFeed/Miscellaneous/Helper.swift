//
//  Helper.swift
//  RedditFeed
//
//  Created by Tri Le on 11/09/21.
//

import Foundation
import UIKit

class Helper {
    
    func getAttributedStringForComment(comments:String?) -> NSAttributedString {
        let fullString = NSMutableAttributedString(string: "Comments: \(comments ?? "")  ")

        let commentsImage = NSTextAttachment()

        commentsImage.image = UIImage(systemName: "bubble.right", withConfiguration:.none)
        
        let commentsAndString = NSAttributedString(attachment: commentsImage)

        fullString.append(commentsAndString)

        return fullString
    }

    func getAttributedStringForScore(score:String?) -> NSAttributedString {
        let fullString = NSMutableAttributedString(string: "Score: \(score ?? "") ")

        let scoreImage = NSTextAttachment()

        scoreImage.image = UIImage(systemName: "arrow.up", withConfiguration:.none)
        
        let scoreAndImage = NSAttributedString(attachment: scoreImage)

        fullString.append(scoreAndImage)

        return fullString
     }

}
