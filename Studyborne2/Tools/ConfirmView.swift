//
//  ConfirmView.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/14.
//  Copyright © 2020 Tix. All rights reserved.
//

import SwiftUI

struct ConfirmView: View {
    let timeSequence: [Array<Int>]
    
    var body: some View {
        HStack {
            Text("RecordConfirm")
        }
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView(timeSequence: [[0, 0], [1, 0]])
    }
}
