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
    @EnvironmentObject private var userdata: UserDataAccesible
    @ObservedObject private var comuni = CommunicationUnit()
    
    
    var body: some View {
        NavigationView {
            VStack {
                Text(comuni.mydata_sample[0].info.result)
                
                List(userdata.subject) { subject in
                    SubjectRow(mydata: myData[0], subject: subject)
                }
                .navigationBarTitle("Today")
                .navigationBarItems(trailing: HeaderView())
                
                
                Button(action: {}) {
                    Image(systemName: "plus.circle")
                    .resizable()
                    .frame(width: 50, height: 50)
                        .foregroundColor(Color.gray)
                }
            }
            
        }
    }
}

struct SubjectList_Previews: PreviewProvider {
    static var previews: some View {
        SubjectList()
        .environmentObject(UserDataAccesible())
    }
}
