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
    
    @Published var isTimerValid: Bool
    @Published var hours_passed: Int
    @Published var minutes_passed: Int
    
    var hours_passed_init: Int
    var minutes_passed_init: Int
    
    
    var timer = Timer()
    
    init() {
        print("your timer is ready")
        self.isTimerValid = false
        
        self.hours_passed = 0
        self.minutes_passed = 0
        
        self.hours_passed_init = 0
        self.minutes_passed_init = 0
    }
    
    func startTimer() {
        self.isTimerValid = true
        let time_started = Date()
        
        
        
        if !self.timer.isValid {
            print("timer fired")
            self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {timer in
                let time_now = Date()
                let (a, b) = gapTime(from: time_started, to: time_now)
                self.hours_passed = a + self.hours_passed_init
                self.minutes_passed = b + self.minutes_passed_init
                print(self.hours_passed, self.minutes_passed)
            })
        }
        
    }
    
    func stopTimer() {
        self.isTimerValid = false
        print("timer stoped")
        
        self.timer.invalidate()
        
        self.hours_passed_init = self.hours_passed
        self.minutes_passed_init = self.minutes_passed
        
    }
}
