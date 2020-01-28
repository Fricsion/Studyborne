//
//  TodayScheduleView.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/23.
//  Copyright © 2020 Tix. All rights reserved.
//

import SwiftUI

struct TodayScheduleView: View {
    @EnvironmentObject var userData: UserDataAccessible
    var body: some View {
        HStack {
            List(0..<24) { i in
                
                Text(String(format: "%02d", i))
                    .font(.system(.caption, design: .monospaced))
                
                Divider()
                
                Text("hello")
                
                Divider()
                
                Text("This is the real")
            }

        }
    }
}

struct TodayScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        TodayScheduleView()
        .environmentObject(UserDataAccessible())
    }
}
