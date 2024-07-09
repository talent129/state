//
//  StateObjectView.swift
//  state Watch App
//
//  Created by Curtis on 2024/7/9.
//

import SwiftUI

struct StateObjectView: View {
    
    @StateObject var school = School()
    var body: some View {
        ScrollView {
            HStack {
                Text("StateObject")
                    .font(.system(size: 15))
                    .bold()
                    .foregroundStyle(.red)
                
                Spacer()
            }
            Text("StateObject行为类似ObservedObject对象，区别是StateObject由SwiftUI负责针对一个指定的View，创建和管理一个实例对象，不管多少次View更新，都能够使用本地对象数据而不丢失")
                .foregroundStyle(.orange)
            Divider()
            Text(school.name).padding()
            Button("点我") {
                school.name = "SwiftUI"
            }
        }
    }
}

#Preview {
    StateObjectView()
}
