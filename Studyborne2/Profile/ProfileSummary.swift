//
//  ProfileSummary.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/19.
//  Copyright © 2020 Tix. All rights reserved.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    var body: some View {
        List {
            HStack {
                Text(profile.name).bold()
                    .font(.title)
                Text(String("ID: \(profile.id)"))
                    .font(.caption)
            }
            
            
            Text("Notification: \(profile.notificationPreference ? "Enanbled" : "Disabled")")
            
            Text("Time Countup: \(profile.time_countup) min")
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
