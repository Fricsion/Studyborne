//
//  RecordTable.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/01.
//  Copyright © 2020 Tix. All rights reserved.
//

import SwiftUI

struct RecordTable: View {
    @EnvironmentObject private var userData: UserDataAccessible
    var body: some View {
        VStack {
            NavigationView {
                VStack() {
                    Text("Weekly Records shown")
                    
                }
                .navigationBarTitle("This Week")
                .navigationBarItems(trailing: HeaderView().environmentObject(userData))
            }
            NavigationView {
                VStack {
                    Text("Monthly Records shown")
                }
                .navigationBarTitle("This Month")
            }
        }
        
        
    }
}

struct RecordTable_Previews: PreviewProvider {
    static var previews: some View {
        RecordTable()
        .environmentObject(UserDataAccessible())
    }
}
