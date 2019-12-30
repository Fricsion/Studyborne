//
//  ContentView.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2019/12/28.
//  Copyright © 2019 Tix. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0    
    
    var body: some View {
        TabView(selection: $selection){
            //            SubjectList.swift参照
            SubjectList()
                .environmentObject(UserDataAccesible())
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "pencil")
                        Text("Today")
                    }
            }
            .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "archivebox")
                        Text("Records")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
