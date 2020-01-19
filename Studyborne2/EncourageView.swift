//
//  EncourageView.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2019/12/29.
//  Copyright © 2019 Tix. All rights reserved.
//

import SwiftUI

struct EncourageView: View {
    
    @Binding var showEncourageView: Bool
    
    let backGroundColor = LinearGradient(gradient: Gradient(colors: [Color.pink, Color.yellow]), startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        NavigationView {
            ZStack {
                backGroundColor.edgesIgnoringSafeArea(.all)
                
                
                VStack {
                    Group {
                        Image(systemName: "chevron.down")
                            .resizable()
                            .frame(width: 80, height: 20)
                            .padding(.bottom, 50)

                        Text("Swipe down to launch")

                    }
                    .foregroundColor(Color.black)
                    .opacity(0.50)
                    
                                        
                    
                    Spacer()
                    
                    Text("Aren't you ready for studying yet?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    Button(action: {
                        self.showEncourageView = false
                    }) {
                        Text("! START NOW !")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.purple)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.purple, lineWidth: 5)
                        )
                        .shadow(radius: 10)
                    }
                    .offset(y: -100)
                    
                }
            }
        }
    }
}

struct EncourageView_Previews: PreviewProvider {
    static var previews: some View {
        EncourageView(showEncourageView: .constant(true))
    }
}
