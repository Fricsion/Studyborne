//
//  ContentView.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2019/12/28.
//  Copyright © 2019 Tix. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userData: UserDataAccessible
    @State private var selection = 0
    @State private var showEncourageView = true //　何のトリガーがなくても自動的に表示されるように初期値Trueにしちゃおう
    @State private var startImmediately = false
    
    var body: some View {
        
        TabView(selection: $selection){
            //            SubjectList.swift参照
            SubjectList()
                .environmentObject(UserDataAccessible())
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "pencil")
                        Text("Today")
                    }
            }
            .tag(0)
            RecordTable()
                .environmentObject(UserDataAccessible())
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "archivebox")
                        Text("Records")
                    }
            }
            .tag(1)
            ToolsView(startImmediately: self.startImmediately)
                .environmentObject(UserDataAccessible())
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "cube.box")
                        Text("Tools")
                    }
            }.tag(2)
            
        }.sheet(isPresented: $showEncourageView) { // ステート変数の値に応じてEncourageViewを表示するぞ
            EncourageView(showEncourageView: self.$showEncourageView, startImmediately: self.$startImmediately, selection: self.$selection)
        }
        .onDisappear() {
            print("EncourageView closed")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserDataAccessible())
    }
}
