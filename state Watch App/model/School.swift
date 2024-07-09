//
//  School.swift
//  state Watch App
//
//  Created by Curtis on 2024/7/9.
//

import Foundation

class School: ObservableObject {
    @Published var name: String = "测试"
    
    deinit {
        print("销毁")
    }
}
