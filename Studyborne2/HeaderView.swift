//
//  HeaderView.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2019/12/29.
//  Copyright © 2019 Tix. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        Image(systemName: "person.circle")
        .resizable()
        .frame(width: 30, height: 30)
            .foregroundColor(Color.blue)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.fixed(width: 30, height: 30))
    }
}
