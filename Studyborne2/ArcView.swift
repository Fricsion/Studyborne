//
//  ArcView.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2020/01/11.
//  Copyright © 2020 Tix. All rights reserved.
//

import SwiftUI

struct ArcView: View {
    
    let myrad: Double
    let radius: CGFloat
    let color: Color
    let center: CGPoint = CGPoint(x: 150, y: 150)
    

    
    var body: some View {
        
        
        Path { path in
            
            path.move(to: center)
            path.addArc(center: center, radius: radius, startAngle: .degrees(-90), endAngle: .degrees(Double(-90 + myrad)), clockwise: false)

        }
        .fill(color)
        .shadow(radius: 5, x: -50, y: -50)
        
    }
}

struct ArcView_Previews: PreviewProvider {
    static var previews: some View {
        ArcView(myrad: 290, radius: 50, color: Color.green)
            .previewLayout(.fixed(width: 300, height: 300))
            
    }
}
