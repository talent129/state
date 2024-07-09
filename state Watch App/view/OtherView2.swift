//
//  OtherView2.swift
//  state Watch App
//
//  Created by Curtis on 2024/7/9.
//

import SwiftUI

struct OtherView2: View {
    
    @State var count = 1
    var body: some View {
        ScrollView {
            Text("2. 针对引用类型设计，当View更新时，实例不会被销毁，与State类似，使得View本身拥有数据")
            
            Text("计数: \(count)")
            Button("刷新") {
                count += 1
            }
            
            MapView2()
            
            Text("与OtherView示例不同的是，怎么操作，work都不会销毁")
        }
        .navigationTitle("状态管理")
    }
}

struct MapView2: View {
    
    @StateObject var work = Work()
    var body: some View {
        VStack {
            Text("\(work.name)")
            Button("+1") {
                work.name += 1
            }
        }
    }
}

#Preview {
    OtherView2()
}
