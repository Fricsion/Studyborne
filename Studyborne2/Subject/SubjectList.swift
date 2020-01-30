//
//  SubjectList.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2019/12/28.
//  Copyright © 2019 Tix. All rights reserved.
//

import UIKit
import SwiftUI

struct SubjectList: View {
    @EnvironmentObject private var userData: UserDataAccessible
    @State var showingAddSubject: Bool = false
    
    var body: some View {
        VStack {
            List(userData.subjects) { subject in
                SubjectRow(mydata: self.userData.userProfile, subject: subject)
            }
            
            
            Button(action: {
                self.showingAddSubject = true
            }) {
                Image(systemName: "plus.circle")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color.gray)
            }
        }
        .sheet(isPresented: $showingAddSubject) {
            AddSubject(showingAddSubject: self.$showingAddSubject, new_subject: MySubjects.default)
        }
        
    }
}

struct SubjectList_Previews: PreviewProvider {
    static var previews: some View {
        SubjectList()
            .environmentObject(UserDataAccessible())
    }
}
