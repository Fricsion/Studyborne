//
//  MyMethod.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/11.
//  Copyright © 2020 Tix. All rights reserved.
//

import Foundation

func stringToDate(_ dateString: String = "1970/01/01 00:00:00") -> Date {
    let formatter: DateFormatter = DateFormatter()
    formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
    return formatter.date(from: dateString)!
}

func gapTime(from time1: Date, to time2: Date) -> Int {
//    リリース段階で.minute -> .hour    .second -> .minuteに直すこと
    guard let minute_gap: Int = (Calendar.current.dateComponents([.second], from: time1, to: time2)).second else {
        fatalError()
    }
    return minute_gap
}

