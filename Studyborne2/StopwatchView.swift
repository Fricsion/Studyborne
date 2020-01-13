//
//  StopwatchView.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/01.
//  Copyright © 2020 Tix. All rights reserved.
//

import SwiftUI

struct StopwatchView: View {
    
    @ObservedObject var stopwatch = StopWatch()
    
    var body: some View {
        VStack {
            AnalogStopwatch(hours_passed: self.stopwatch.hours_passed, minutes_passed: self.stopwatch.minutes_passed)
                .frame(width: 200, height: 200)
            
            HStack {
                Button(action: {
                    self.stopwatch.startTimer()
                }) {
                    Text("Start")
                }
                .background(Color.purple)
                .foregroundColor(Color.white)
                .font(.title)
                
                Button(action: {
                    self.stopwatch.stopTimer()
                }) {
                    Text("Change subjects or books (Lap separater)")
//                   この機能は時間測定後、なにを取り組んだか選択する際のセパレートポインtとして扱う
                }
                .font(.caption)
            }
        }
    }
}

struct StopwatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopwatchView()
    }
}
