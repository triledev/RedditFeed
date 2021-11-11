//
//  RedditFeedModel.swift
//  RedditFeed
//
//  Created by Tri Le on 11/09/21.
//


import Foundation

struct Feed: Codable {
    let data: FeedData
}

struct FeedData: Codable {
    let after: String
    let children: [Child]
}

struct Child: Codable {
    let data: ChildData
}

struct ChildData: Codable {
    let title: String?
    let num_comments: Int
    let score: Int
    let thumbnail: String?
    let thumbnail_height: Int?
    let thumbnail_width: Int?
}

/**
 {"kind": "Listing", "data": {"after": "t3_qq216z", "dist": 25, "modhash": "", "geo_filter": null, "children": [{"kind": "t3", "data": {"approved_at_utc": null, "subreddit": "AskReddit", "selftext": "", "author_fullname": "t2_4crnue0y", "saved": false, "mod_reason_title": null, "gilded": 0, "clicked": false, "title": "What had so much hype about it, but was actually terrible?", "link_flair_richtext": [], "subreddit_name_prefixed": "r/AskReddit", "hidden": false, "pwls": 6, "link_flair_css_class": null, "downs": 0, "thumbnail_height": null, "top_awarded_type": null, "hide_score": false, "name": "t3_qq7ztf", "quarantine": false, "link_flair_text_color": "dark", "upvote_ratio": 0.91, "author_flair_background_color": null, "subreddit_type": "public", "ups": 32987, "total_awards_received": 75, "media_embed": {}, "thumbnail_width": null, "author_flair_template_id": null, "is_original_content": false, "user_reports": [], "secure_media": null, "is_reddit_media_domain": false, "is_meta": false, "category": null, "secure_media_embed": {}, "link_flair_text": null, "can_mod_post": false, "score": 32987, "approved_by": null, "is_created_from_ads_ui": false, "author_premium": false, "thumbnail": "self", "edited": false, "author_flair_css_class": null, "author_flair_richtext": [], "gildings": {"gid_1": 20}, "content_categories": null, "is_self": true, "mod_note": null, "created": 1636477033.0, "link_flair_type": "text", "wls": 6, "removed_by_category": null, "banned_by": null, "author_flair_type": "text", "domain": "self.AskReddit", "allow_live_comments": true, "selftext_html": null, "likes": null, "suggested_sort": null, "banned_at_utc": null, "view_count": null, "archived": false, "no_follow": false, "is_crosspostable": false, "pinned": false, "over_18": false, "all_awardings": [{"giver_coin_reward": null, "subreddit_id": null, "is_new": false, "days_of_drip_extension": 0, "coin_price": 125, "id": "award_5f123e3d-4f48-42f4-9c11-e98b566d5897", "penny_donate": null, "award_sub_type": "GLOBAL", "coin_reward": 0, "icon_url": "https://i.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png", "days_of_premium": 0, "tiers_by_required_awardings": null, "resized_icons": [{"url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=16&amp;height=16&amp;auto=webp&amp;s=92932f465d58e4c16b12b6eac4ca07d27e3d11c0", "width": 16, "height": 16}, {"url": "https://preview.redd.it/award_images/t5_22cerq/5izbv4fn0md41_Wholesome.png?width=32&amp;height=32&amp;auto=webp&amp;s=d11484a208d68a318bf9d4fcf371171a1cb6a7ef", "width": 32, "height": 32},
 **/
