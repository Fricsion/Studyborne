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
                    if !self.stopwatch.isTimerValid {
                        self.stopwatch.startTimer()
                    } else {
                        self.stopwatch.stopTimer()
                    }
                }) {
                    Text(self.stopwatch.isTimerValid ? "STOP" : "START")
                        
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.purple)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.purple, lineWidth: 5)
                    )
                }
                
                Button(action: {
                    self.stopwatch.stopTimer()
                }) {
                    Text("Mark Off")
                        .fontWeight(.bold)
                        .font(.subheadline)
                        .foregroundColor(.purple)
                    .padding()
                        .overlay(
                            Capsule(style: .continuous)
                                .stroke(Color.purple, style: StrokeStyle(lineWidth: 5, dash: [10]))
                    )
                    //                   この機能は時間測定後、なにを取り組んだか選択する際のセパレートポインtとして扱う
                }
                .opacity(self.stopwatch.isTimerValid ? 1.0 : 0.3)
                .offset(x: 50)
            }
        }
    }
}

struct StopwatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopwatchView()
    }
}
