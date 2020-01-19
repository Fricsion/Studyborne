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

func gapTime(from time1: Date, to time2: Date) -> (Int, Int) {
//    リリース段階で.minute -> .hour    .second -> .minuteに直すこと
    guard var minute_gap: Int = (Calendar.current.dateComponents([.hour, .minute, .second], from: time1, to: time2)).second else {
        fatalError()
    }
    let hour_gap = minute_gap/60
    minute_gap = minute_gap % 60
    
    return(hour_gap, minute_gap)
}

