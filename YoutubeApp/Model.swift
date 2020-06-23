//
//  Model.swift
//  YoutubeApp
//
//  Created by Chong Zhuang Hong on 22/06/2020.
//  Copyright © 2020 Chong Zhuang Hong. All rights reserved.
//

import Foundation

class Model {
    
    func getVideos() {
        
        //create url object
        let url = URL(string: Constant.API_URL)
        
        guard url != nil else {
            return
        }
        
        //get a urlsession object
        let session = URLSession.shared
        
        //get a data task from the urlsession
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
             
            //check if there is error
            if error != nil || data == nil {
                return
            }
            
            do {
                
                //parsing the data into video object
                let decoder = JSONDecoder()
                //format of the date in json
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                dump(response)
            }
            catch {
                
            }
            

        }
        
        //kick off the task
        dataTask.resume()
    }
}
