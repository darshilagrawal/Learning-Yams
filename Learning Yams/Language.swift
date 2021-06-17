//
//  Language.swift
//  Learning Yams
//
//  Created by Darshil Agrawal on 17/06/21.
//

import Foundation

struct Language : Codable{
    var name :String
    var version :Int
    
    func toDictionary() -> [String:Any]{
        return ["name":self.name,"version":self.version]
    }
}

let language = Language(name: "Swift", version: 5)

let encoder = JSONEncoder()
let encodedData = try? encoder.encode(language)
    
func printData(){
            print(encodedData)
    }
