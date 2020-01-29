//
//  ScheduleSummary.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/30.
//  Copyright © 2020 Tix. All rights reserved.
//

import SwiftUI

struct ScheduleSummary: View {
    @EnvironmentObject var userData: UserDataAccessible
    var body: some View {
        NavigationView {
            Text("Schedule Summary")
            .navigationBarTitle("Today")
            .navigationBarItems(trailing: HeaderView().environmentObject(userData))
        }
    }
}

struct ScheduleSummary_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleSummary()
        .environmentObject(UserDataAccessible())
    }
}
