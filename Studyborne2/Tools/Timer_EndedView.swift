//
//  TimerEndedView.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/14.
//  Copyright © 2020 Tix. All rights reserved.
//

import SwiftUI

struct Timer_EndedView: View {
    @Binding var showTimer_EndedView: Bool
    
    let stopwatch_running: StopWatch
    
    var Confirmation: some View {
        VStack {
            HStack {
                Button(action: {}) {
                    Text("Yeah")
                        .foregroundColor(.gray)
                    .padding()
                    .overlay(
                        Circle()
                            .stroke(Color.orange, style: StrokeStyle(lineWidth: 5, dash: [5]))
                    )
                }
                
                Button(action: {
                    self.showTimer_EndedView = false
                }) {
                    Text("Still GOING")
                    .padding(50)
                    .overlay(
                        Circle()
                            .stroke(Color.green, style: StrokeStyle(lineWidth: 10))
                    )
                }
            }
            .padding()
            Text("\(String(format: "%02d", Int(stopwatch_running.hours_passed))) : \(String(format: "%02d", Int(stopwatch_running.minutes_passed)))")
                .font(.title)
            
        }
    }
    var body: some View {
        ZStack {
            Color.gray.opacity(0.3).edgesIgnoringSafeArea(.all)
            
            Confirmation
        }
    }

}

struct Timer_EndedView_Previews: PreviewProvider {
    static var previews: some View {
        Timer_EndedView(showTimer_EndedView: .constant(true), stopwatch_running: StopWatch.init())
    }
}
