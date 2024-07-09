//
//  StateView.swift
//  state Watch App
//
//  Created by Curtis on 2024/7/9.
//

import SwiftUI

struct StateView: View {
    @State private var count = 0
    var body: some View {
        ScrollView {
            HStack {
                Text("@State")
                    .font(.title)
                    .foregroundStyle(.red)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                Spacer()
            }
            Text("和一般的存储属性不同，@State 修饰的值，在 SwiftUI 内部会被自动转换为一对 setter 和 getter，对这个属性进行赋值的操作将会触发 View 的刷新，它的 body 会被再次调用，底层渲染引擎会找出界面上被改变的部分，根据新的属性值计算出新的 View，并进行刷新。")
                .font(.system(size: 14, weight: .medium))
                .foregroundStyle(.orange)
            Divider()
            Text("\(count)")
            Button("点击+1") {
                count += 1
            }
            .background(.green)
        }
        .navigationTitle("SwiftUI状态管理")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    StateView()
}
