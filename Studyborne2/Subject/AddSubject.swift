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
    @State var new_subject_name: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("NAMED")
                
                Divider()
                
                TextField("type your new subject", text: $new_subject_name)
            }
            
        }
        .padding()
        
    }
}

struct AddSubjectView_Previews: PreviewProvider {
    static var previews: some View {
        AddSubject(showingAddSubject: .constant(true))
    }
}
