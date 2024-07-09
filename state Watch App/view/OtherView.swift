//
//  OtherView.swift
//  state Watch App
//
//  Created by Curtis on 2024/7/9.
//

import SwiftUI

struct OtherView: View {
    
    @State var count = 0
    var body: some View {
        List {
            Text("@StateObject和@ObservedObject区别")
                .font(.system(size: 15))
                .foregroundStyle(.red)
            Text("1. @ObservedObject只是作为View的数据依赖，不被View持有，View更新时ObservedObject对象可能会被销毁, 适合数据在SwiftUI外部存储，把@ObservedObject包裹的数据作为视图的依赖，比如数据库中存储的数据")
            
            Text("刷新计数: \(count)")
            Button("刷新") {
                count += 1
            }
            MapView()
            
            Text("点击刷新时,Work 的deinit方法被调用，说明work对象被销毁；先连续点击+1,Text上的数字在一直递增，当点击刷新时Text上的数字恢复为1，这个现象也说明work对象被销毁")            
        }
        .navigationTitle("SwiftUI状态管理")
    }
}

struct MapView: View {
    
    @ObservedObject var work = Work()
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
    OtherView()
}
