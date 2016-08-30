//
//  RepController.swift
//  Representitive
//
//  Created by Justin Carver on 8/29/16.
//  Copyright © 2016 Justin Carver. All rights reserved.
//

import Foundation

class RepController {

    static let baseURL = NSURL(string: "http://whoismyrepresentative.com/getall_reps_bystate.php")
    
    static func GetReps(state: String, completion: ((rep: [Representitive]) -> Void)) {
        
        guard let url = self.baseURL else { fatalError("URL optional is nil") }
        
        let urlParameters = ["state": "\(state)", "output": "json"]
     
        NetworkController.performRequestForURL(url, httpMethod: .Get, urlParameters: urlParameters, body: nil) { (data, error) in
            if let data = data, responseDataString = NSString(data: data, encoding: NSUTF8StringEncoding) {
                
                guard let responseDictionary = (try? NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments)) as? [String: AnyObject], repDictionaries = responseDictionary["results"] as? [[String: AnyObject]]
                    
                    else {
                        print("Unable to serialize JSON. \nResponse: \(responseDataString)")
                        completion(rep: [])
                        return
                }

                let reps = repDictionaries.flatMap({Representitive(dictionary: $0)})
                
                completion(rep: reps)
                
            } else {
                
                print("No data returned from network request")
                completion(rep: [])
            }
        }
    }
}