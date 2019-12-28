//
//  MySubjects.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2019/12/28.
//  Copyright © 2019 Tix. All rights reserved.
//

import Foundation

struct MySubjects: Hashable, Codable, Identifiable {
    var title: String;
    var id: Int;
    var color: String;
    var today_time: Int
}
