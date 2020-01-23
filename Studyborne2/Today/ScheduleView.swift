//
//  TodayScheduleView.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/23.
//  Copyright © 2020 Tix. All rights reserved.
//

import SwiftUI

struct TodayScheduleView: View {
    var body: some View {
        HStack {
            List(0..<24) { i in
                Text("\(i)")
                    .font(.system(.caption, design: .monospaced))
                
                Divider()
                
                Text("this is the schedule")
                
                Divider()
                
                Text("This is the real")
            }

        }
    }
}

struct TodayScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        TodayScheduleView()
    }
}
