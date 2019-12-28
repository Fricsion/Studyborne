//
//  SubjectList.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2019/12/28.
//  Copyright © 2019 Tix. All rights reserved.
//

import SwiftUI

struct SubjectList: View {
    var body: some View {
        NavigationView {
            List {
                SubjectRow(mydata: myData[0], subject: mySubjectData[0])
                SubjectRow(mydata: myData[0], subject: mySubjectData[1])
            }
            .navigationBarTitle("Today")
        }
    }
}

struct SubjectList_Previews: PreviewProvider {
    static var previews: some View {
        SubjectList()
    }
}
