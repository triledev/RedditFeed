//
//  FeedTableViewCell.swift
//  RedditFeed
//
//  Created by Tri Le on 11/09/21.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    static let identifier = "FeedTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("No implementation for init(coder:) ")
    }
    
    lazy private var feedImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy private var redditNewsTitle: UILabel = {
        let newsTitle = UILabel(frame: .zero)
        newsTitle.translatesAutoresizingMaskIntoConstraints = false
        newsTitle.numberOfLines = 0
        newsTitle.textAlignment = .left
        newsTitle.font = UIFont.boldSystemFont(ofSize: CGFloat(customFontSize.boldFontSize))
        
        return newsTitle
    }()
    
    lazy private var redditComments: UILabel = {
        let commentsLabel = UILabel(frame: .zero)
        commentsLabel.translatesAutoresizingMaskIntoConstraints = false
        commentsLabel.numberOfLines = 0
        commentsLabel.textAlignment = .left
        commentsLabel.font = UIFont.boldSystemFont(ofSize: CGFloat(customFontSize.boldFontSize))
        commentsLabel.textColor = .gray
        
        return commentsLabel
    }()
    
    lazy private var redditScore: UILabel = {
        let score = UILabel(frame: .zero)
        score.translatesAutoresizingMaskIntoConstraints = false
        score.numberOfLines = 0
        score.textAlignment = .left
        score.font = UIFont.boldSystemFont(ofSize: CGFloat(customFontSize.boldFontSize))
        score.textColor = .gray
        
        return score
    }()
    
    func configureCell(title: String?, score: String?, numComments: String?, imageData: Data?) {
        let attributedText = Helper()
        
        setUpUI(imageData: imageData)
        
        redditNewsTitle.text = title
        redditComments.attributedText = attributedText.getAttributedStringForComment(comments: numComments)
        redditScore.attributedText = attributedText.getAttributedStringForScore(score: score)
        feedImageView.image = nil
        if let data = imageData {
            feedImageView.image = UIImage(data: data)
        }
    }
    
    private func setUpUI(imageData: Data? = nil) {
        let vStackView = UIStackView(frame: .zero)
        vStackView.translatesAutoresizingMaskIntoConstraints = false
        vStackView.axis = .vertical
        vStackView.distribution = .fill
        vStackView.alignment = .leading
        vStackView.spacing = CGFloat(customFontSize.spacingBetweenViews)
        
        vStackView.addArrangedSubview(redditNewsTitle)
        if let _ = imageData {
            vStackView.addArrangedSubview(feedImageView)
        }
      
        let hStackView = UIStackView(frame: .zero)
        hStackView.axis = .horizontal
        
        hStackView.addArrangedSubview(redditScore)
        hStackView.addArrangedSubview(redditComments)
        
        vStackView.addArrangedSubview(hStackView)
        
        contentView.addSubview(vStackView)
        
        vStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 18.0).isActive = true
        vStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 18.0).isActive = true
        vStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8.0).isActive = true
        vStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -18.0).isActive = true
    }
}

