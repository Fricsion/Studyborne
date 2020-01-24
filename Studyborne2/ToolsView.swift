//
//  ToolsView.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/01.
//  Copyright © 2020 Tix. All rights reserved.
//

import SwiftUI

struct ToolsView: View {
    @EnvironmentObject private var userData: UserDataAccessible
    @Binding var startImmediately: Bool
    
    var body: some View {
        NavigationView {
            StopwatchView(startImmediately: self.$startImmediately)
                .navigationBarTitle("Stop Watch")
                .navigationBarItems(trailing: HeaderView().environmentObject(userData))
        }
    }
}

struct ToolsView_Previews: PreviewProvider {
    static var previews: some View {
        ToolsView(startImmediately: .constant(false))
        .environmentObject(UserDataAccessible())
    }
}
