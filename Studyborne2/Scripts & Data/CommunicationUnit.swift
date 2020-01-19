//
//  CommunicationUnit.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2019/12/30.
//  Copyright © 2019 Tix. All rights reserved.
//

import Foundation

func get<T: Decodable>(from url_string: String, completionBlock: @escaping (T) -> Void) -> Void {
    guard let url = URL(string: url_string) else {
        fatalError()
    }
    let task: URLSessionTask = URLSession.shared.dataTask(with: url) { data, response, error in
        guard let data: Data = data else {
            fatalError()
        }
        do {
            let decoder = JSONDecoder()
            let json = try decoder.decode(T.self, from: data)
            print(json)
            completionBlock(json)
        } catch {
            print(error)
        }
    }
    task.resume()
}


// -------------------------
struct Foo: Decodable {
    var info: Bar?
    var response: Baz?
}

struct Bar: Decodable {
    var timestamp: Int?
    var result: String?
}

struct Baz: Decodable {
    var test: String?
    var test2: String?
}
