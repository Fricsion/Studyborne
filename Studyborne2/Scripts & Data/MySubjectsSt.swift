//
//  MySubjects.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2019/12/28.
//  Copyright © 2019 Tix. All rights reserved.
//

import Foundation

// 教科ごとのデータ格納です。

struct MySubjects: Hashable, Codable, Identifiable {
    var title: String;
    var id: Int;
    var tag: Int
    var color: String;
    var today_time: Int
    
    enum Tags: Int, CaseIterable {
        case tag_0 = 0
        case tag_1 = 1
    }
    
    static let `default` = Self(title: "TestSubject", id: 0, tag: 0, color: "Blue", today_time: 10)
}
