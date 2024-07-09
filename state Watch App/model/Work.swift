//
//  Work.swift
//  state Watch App
//
//  Created by Curtis on 2024/7/9.
//

import Foundation

class Work: ObservableObject {
    @Published var name = 1
    
    deinit {
        print("销毁")
    }
}
