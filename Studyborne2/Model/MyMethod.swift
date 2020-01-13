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
    let hour_gap: Int = (Calendar.current.dateComponents([.hour], from: time1, to: time2)).hour!
    let minute_gap: Int = (Calendar.current.dateComponents([.minute], from: time1, to: time2)).minute! % 60
    return(hour_gap, minute_gap)
}
