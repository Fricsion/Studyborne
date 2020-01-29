//
//  MyMethod.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/11.
//  Copyright © 2020 Tix. All rights reserved.
//

import Foundation
import UIKit

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

func stopwatchNotify(passed: Int) {
    let center = UNUserNotificationCenter.current()
    
    let notificationContent = UNMutableNotificationContent()
    notificationContent.title = "Still Going?"
    notificationContent.body = "\(passed) mins passed since you started studying. Have some rest to embed what you studied within yourself"
    notificationContent.sound = UNNotificationSound.default
    
    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
    let request = UNNotificationRequest(identifier: "StopwatchNotification", content: notificationContent, trigger: trigger)
    center.add(request)
}

