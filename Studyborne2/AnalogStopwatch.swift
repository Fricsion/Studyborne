//
//  AnalogStopwatch.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/01.
//  Copyright © 2020 Tix. All rights reserved.
//

import Foundation
import SwiftUI

struct AnalogStopwatch: View {
    
    let hours_passed: Int
    let minutes_passed: Int
    
    
    var Hour_pies: some View {
        ForEach(-hours_passed..<0, id: \.self) { i in
            ArcView(myrad: 360, radius: 30 - 10*CGFloat(i), color: Color.init(red: 0, green: 1 + 0.1 * Double(i), blue: 0))
        }
    }
    
    var body: some View {
        ZStack {
            Hour_pies
            
            ArcView(myrad: Double(minutes_passed * 6), radius: 30, color: Color.blue)
        }
    }
}

struct AnalogStopwatch_Previews: PreviewProvider {
    static var previews: some View {
        AnalogStopwatch(hours_passed: 12, minutes_passed: 20)
            .previewLayout(.fixed(width: 300, height: 300))
    }
}
