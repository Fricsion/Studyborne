//
//  UserData.swift
//  Studyborne2
//
//  Created by Tiz Matz on 2019/12/29.
//  Copyright © 2019 Tix. All rights reserved.
//

import Foundation

final class UserDataAccessible: ObservableObject {
    @Published var userProfile = myData;
    @Published var subjects = mySubjectData;
    @Published var schedules = myScheduleData;
    
    // いずれもloadJsonData.swiftで定義した（右辺の）変数を代入している
//    利用の際は監視対象（Environmental Object)に左辺の公開変数を登録する必要がある。
}
