//
//  ToolsView.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/01.
//  Copyright © 2020 Tix. All rights reserved.
//

import SwiftUI

struct ToolsView: View {
    var startImmediately: Bool
    
    var body: some View {
        NavigationView {
            StopwatchView(startImmediately: startImmediately)
                .navigationBarTitle("Stop Watch")
                .navigationBarItems(trailing: HeaderView())
        }
    }
}

struct ToolsView_Previews: PreviewProvider {
    static var previews: some View {
        ToolsView(startImmediately: false)
    }
}
