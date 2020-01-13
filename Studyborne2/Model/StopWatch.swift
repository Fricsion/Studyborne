//
//  StopWatch.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/12.
//  Copyright © 2020 Tix. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class StopWatch: ObservableObject {
    
    @Published var hours_passed: Int = 2
    @Published var minutes_passed: Int = 40
    
    var timer = Timer()
    
    init() {
        print("your timer is ready")
        self.hours_passed = 0
        self.minutes_passed = 0
    }
    
    func startTimer() {
        let time_started = Date()
        
        if !self.timer.isValid {
            print("timer fired")
            self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {timer in
                let time_now = Date()
                print(time_started, time_now)
                (self.hours_passed, self.minutes_passed) = gapTime(from: time_started, to: time_now)
            })
        }
        
    }
    
    func stopTimer() {
        print("timer stoped")
        self.timer.invalidate()
    }
}
