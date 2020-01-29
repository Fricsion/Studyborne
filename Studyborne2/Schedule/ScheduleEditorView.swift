//
//  TodayScheduleView.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/23.
//  Copyright © 2020 Tix. All rights reserved.
//

import SwiftUI

struct ScheduleEditorView: View {
    
    var schedule: MySchedule
    
    var timeline_bar: some View {
        Text("TIMELINE")
    }
    
    var body: some View {
        VStack {
            
            timeline_bar
            
            NavigationView {
                VStack {
                    List {
                        Text("hello")
                    }
                    .navigationBarTitle("Schedule Editor")
                    
                    Button(action: {}) {
                        Image(systemName: "plus.circle")
                        .resizable()
                            .frame(width: 50, height: 50)
                    }
                }
            }
            .padding()
            .border(Color.gray, width: 10)
        }
    }
}

struct TodayScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleEditorView(schedule: MySchedule.default)
    }
}
