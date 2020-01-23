//
//  ConfirmSubjectView.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/23.
//  Copyright © 2020 Tix. All rights reserved.
//

import SwiftUI

struct ConfirmSubjectView: View {
    @EnvironmentObject var userData: UserDataAccessible
    
    var body: some View {
        
        ForEach(userData.subjects) { subject in
            Button(action: {}) {
                Text(subject.title)
                    .padding(50)
                    .overlay(
                        Circle()
                            .stroke(Color.gray, style: StrokeStyle(lineWidth: 5))
                        
                )
            }
        }
        
    }
}

struct ConfirmSubjectView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmSubjectView()
            .environmentObject(UserDataAccessible())
    }
}
