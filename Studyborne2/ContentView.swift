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
    @State private var showEncourageView = true //　何のトリガーがなくても自動的に表示されるように初期値Trueにしちゃおう
    
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
            RecordTable()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "archivebox")
                        Text("Records")
                    }
            }
            .tag(1)
            ToolsView()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "cube.box")
                        Text("Tools")
                    }
            }.tag(2)
        }.sheet(isPresented: $showEncourageView) { // ステート変数の値に応じてEncourageViewを表示するぞ
            EncourageView(showEncourageView: self.$showEncourageView)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
