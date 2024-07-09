//
//  Person.swift
//  state Watch App
//
//  Created by Curtis on 2024/7/9.
//

import Foundation

class Person: ObservableObject {
    @Published var name: String = "张三"
}
