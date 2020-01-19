//
//  Data.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2019/12/28.
//  Copyright © 2019 Tix. All rights reserved.
//

import Foundation


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError()
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch  {
        fatalError()
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch  {
        fatalError()
    }
}

var myData: [Profile] = load("profile.json")
var mySubjectData: [MySubjects] = load("SubjectData.json")
