//
//  SubjectRow.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2019/12/28.
//  Copyright © 2019 Tix. All rights reserved.
//

import SwiftUI

struct SubjectRow: View {
    var mydata: MyProperty
    var subject: MySubjects
    
    var body: some View {
        HStack {
            Text(subject.title)
                .font(.system(.body, design: .monospaced))
                .padding(10)
            
            Spacer()
            
            Text(String(subject.today_time))
                .font(.system(.body, design: .monospaced))
                
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "arrow.down.square")
                    .resizable()
                    .frame(width: 25.0, height: 25.0)
            }
            .foregroundColor(Color.gray)
            .padding(10)
            
            VStack {
                Button(action: {
                }) {
                    Image(systemName: "arrow.up.square.fill")
                        .resizable()
                        .frame(width: 50.0, height: 50.0)
                }
                .foregroundColor(Color.black)
                .padding(10)
                
                Text("+\(mydata.time_countup)")
                    .font(.system(.body, design: .monospaced))
            }
        }
        .cornerRadius(10)
    }
}

struct SubjectRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SubjectRow(mydata: myData[0], subject: mySubjectData[0])
            
            SubjectRow(mydata: myData[0], subject: mySubjectData[1])
        }
        .previewLayout(.fixed(width: 300, height: 100))
    }
}
