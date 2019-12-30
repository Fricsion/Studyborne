//
//  CommunicationUnit.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2019/12/30.
//  Copyright © 2019 Tix. All rights reserved.
//

import Foundation
import Combine

class CommunicationUnit: ObservableObject {
    
    @Published var mydata_sample: [Foo] = []
    @Published var subject: [MySubjects] = []
    
    init() {
        get(from: URL(string: "https://uec.jottama.jp/test")!)
    }
    
    func get(from url: URL) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print("An error occupied")
            }
            self.mydata_sample = try! JSONDecoder().decode([Foo].self, from: data!)
        }
    }
}

struct Foo: Decodable {
    var info: Bar
    var response: Baz
}

struct Bar: Decodable {
    var timestamp: Int
    var result: String
}

struct Baz: Decodable {
    var test: String
    var test2: String
}
