//
//  MyScheduleSt.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/28.
//  Copyright © 2020 Tix. All rights reserved.
//

import Foundation

// スケジュールのデータ構造です

struct MySchedule: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var source: Array<ofTheClock>
}

struct ofTheClock: Hashable, Codable {
    var ofTheClock: Int
    var title: String
    var color: String
}
