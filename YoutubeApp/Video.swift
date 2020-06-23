//
//  Video.swift
//  YoutubeApp
//
//  Created by Chong Zhuang Hong on 22/06/2020.
//  Copyright © 2020 Chong Zhuang Hong. All rights reserved.
//

import Foundation

struct Video : Decodable {
    
    var videoID = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date()
    
    enum CodingKeys: String, CodingKey {
        
        case snippet
        case high
        case resourceId
        case thumbnails
        
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoId
    }
    
    init (from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        //parse title
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        
        //parse description
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        
        //parse published date
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        //parse thumnails
        let thumnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnail)
        let highContainer = try thumnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        //parse video id
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        self.videoID = try resourceIdContainer.decode(String.self, forKey: .videoId)
        
    }
    
}
