//
//  MyData.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2019/12/28.
//  Copyright © 2019 Tix. All rights reserved.
//

import Foundation

// ユーザ設定など、個人のプリファレンスをまとめました。

struct MyProperty: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var time_countup: Int
}
