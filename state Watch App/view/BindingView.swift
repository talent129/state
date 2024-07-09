//
//  BindingView.swift
//  state Watch App
//
//  Created by Curtis on 2024/7/9.
//

import SwiftUI

struct BindingView: View {
    @State private var count = "Hello World!"
    var body: some View {
        ScrollView {
            HStack {
                Text("@Binding")
                    .foregroundStyle(.red)
                Spacer()
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
            Text("和 @State 类似，@Binding 也是对属性的修饰，它做的事情是将值语义的属性“转换”为引用语义。对被声明为 @Binding 的属性进行赋值，改变的将不是属性本身，而是它的引用，这个改变将被向外传递.")
                .foregroundStyle(.orange)
            Divider()
            BindingSonView(count1: $count)
            Text(count)
                .padding()
            
            Text("结果描述").foregroundStyle(.purple)
            Text("使用@state可以实现在当前view视图内的状态管理，但是如果需要将状态传递到子视图，并且实现双向绑定就需要使用@Binding来实现，示例中通过@Binding绑定上层传递过来的count1,当点击按钮后，会发现最上层view的Text内容变成了Hello SwiftUI!，这里就实现了双向绑定，并且通过@Binding绑定的数据或者对象其生命周期同BindingSonView保存一致")
                .foregroundStyle(.cyan)
        }
        .navigationTitle("SwiftUI状态管理")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BindingSonView: View {
    
    @Binding var count1: String
    var body: some View {
        Button("点我") {
            self.count1 = "Hello SwiftUI!"
        }
        .foregroundStyle(.tint)
    }
}

#Preview {
    BindingView()
}
