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
    @State private var showTimer_EndedView = false
    var startImmediately: Bool
    
    var body: some View {
        VStack {
            AnalogStopwatch(hours_passed: self.stopwatch.hours_passed, minutes_passed: self.stopwatch.minutes_passed)
                .frame(width: 200, height: 200)
            
            VStack {
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
                        self.stopwatch.markOff()
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
                
                Button(action: {
                    print("This is your best")
                    self.stopwatch.stopTimer()
                    self.showTimer_EndedView = true
                }) {
                    Text("This is my best")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .padding(.init(top: 20, leading: 100, bottom: 20, trailing: 50))
                        .overlay(
                            Capsule(style: .continuous)
                                .stroke(Color.orange, style: StrokeStyle(lineWidth: 5, dash: [5]))
                    )
                }
                .opacity(self.stopwatch.hours_passed > 0 || self.stopwatch.minutes_passed > 0 ? 1.0 : 0.3)
            }
        }
        .onAppear() {
            if self.startImmediately {
                self.stopwatch.startTimer()
                
            }
        }
        .sheet(isPresented: $showTimer_EndedView, onDismiss: {
            print("canceled")
            self.stopwatch.startTimer()
            
        }) {
            Timer_EndedView(showTimer_EndedView: self.$showTimer_EndedView, stopwatch_running: self.stopwatch)
        }
    }
    
}

struct StopwatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopwatchView(startImmediately: false)
    }
}
