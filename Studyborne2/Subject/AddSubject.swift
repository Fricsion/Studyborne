//
//  AddSubjectView.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/30.
//  Copyright © 2020 Tix. All rights reserved.
//

import SwiftUI

struct AddSubject: View {
    @Binding var showingAddSubject: Bool
    @State var new_subject: MySubjects
    
    var body: some View {
        List {
            HStack {
                Text("NAMED")
                
                Divider()
                
                TextField("type your new subject", text: $new_subject.title)
                
                
            }
            
//            VStack {
//                Text("Tag for this subject").bold()
//
//                Picker("Tag", selection: $new_subject) {
//                    ForEach(MySubjects.Tags.allCases, id: \.self) { i in
//                        Text(i.rawValue).tag()
//                    }
//                }
//                .pickerStyle(SegmentedPickerStyle())
//
//            }
//            .padding(.top)
//
        }
        .padding()
        
    }
}

struct AddSubjectView_Previews: PreviewProvider {
    static var previews: some View {
        AddSubject(showingAddSubject: .constant(true), new_subject: MySubjects.default)
    }
}
