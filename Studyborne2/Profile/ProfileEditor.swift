//
//  ProfileEditor.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/19.
//  Copyright © 2020 Tix. All rights reserved.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                
                Divider()
                
                TextField("username", text: $profile.name)
            }
            
            Toggle(isOn: $profile.notificationPreference) {
                Text("Notification")
            }
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Countup by").bold()
                
                //                Slider(value: $profile.time_countup)
            }
            .padding()
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
