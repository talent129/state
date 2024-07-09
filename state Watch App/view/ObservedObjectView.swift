//
//  ObservedObjectView.swift
//  state Watch App
//
//  Created by Curtis on 2024/7/9.
//

import SwiftUI

struct ObservedObjectView: View {
    
    @ObservedObject var person = Person()
    var body: some View {
        ScrollView {
            HStack {
                Text("ObservedObject").foregroundStyle(.red).bold()
                Spacer()
            }
            Text("如果说 @State 是全自动驾驶的话，ObservableObject 就是半自动，它需要一些额外的声明。ObservableObject 协议要求实现类型是 class，它只有一个需要实现的属性：objectWillChange。在数据将要发生改变时，这个属性用来向外进行“广播”，它的订阅者 (一般是 View 相关的逻辑) 在收到通知后，对 View 进行刷新。").foregroundStyle(.orange)
            Text("创建 ObservableObject 后，实际在 View 里使用时，我们需要将它声明为 @ObservedObject。这也是一个属性包装，它负责通过订阅 objectWillChange 这个“广播”，将具体管理数据的 ObservableObject 和当前的 View 关联起来。").foregroundStyle(.purple)
            Divider()
            Text(person.name)
                .padding()
            Button("点我") {
                person.name = "Hello SwiftUI"
            }
            
            Text("@ObservedObject修饰的必须是遵守ObservableObject 协议的class对象.class对象的属性只有被@Published修饰时，属性的值修改时，才能被监听到")
                .foregroundStyle(.green)
        }
    }
}

#Preview {
    ObservedObjectView()
}
