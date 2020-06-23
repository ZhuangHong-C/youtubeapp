//
//  constant.swift
//  YoutubeApp
//
//  Created by Chong Zhuang Hong on 22/06/2020.
//  Copyright © 2020 Chong Zhuang Hong. All rights reserved.
//

import Foundation

struct Constant {
    
    static var API_KEY = ""
    static var Playlist_ID = "PLMRqhzcHGw1aLoz4pM_Mg2TewmJcMg9ua"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constant.Playlist_ID)&key=\(Constant.API_KEY)"
}
