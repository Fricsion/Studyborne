//
//  ConfirmView.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/14.
//  Copyright © 2020 Tix. All rights reserved.
//

import SwiftUI

struct ConfirmView: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Text("Yeah")
                    .foregroundColor(.gray)
                .padding()
                .overlay(
                    Circle()
                        .stroke(Color.orange, style: StrokeStyle(lineWidth: 5, dash: [5]))
                )
            }
            
            Button(action: {}) {
                Text("Still GOING")
                .padding(50)
                .overlay(
                    Circle()
                        .stroke(Color.green, style: StrokeStyle(lineWidth: 10))
                )
            }
        }
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView()
    }
}
