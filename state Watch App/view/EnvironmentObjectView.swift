//
//  EnvironmentObjectView.swift
//  state Watch App
//
//  Created by Curtis on 2024/7/9.
//

import SwiftUI

struct EnvironmentObjectView: View {
    
    var body: some View {
        ScrollView {
            HStack {
                Text("EnvironmentObject").foregroundStyle(.red).bold()
                Spacer()
            }
            Text("在 SwiftUI 中，View 提供了 environmentObject(_😃 方法，来把某个 ObservableObject 的值注入到当前 View 层级及其子层级中去。在这个 View 的子层级中，可以使用 @EnvironmentObject 来直接获取这个绑定的环境值。")
                .foregroundStyle(.orange)
            Divider()
            let animal = Animal()
            EnvironmentObjectSonView().environmentObject(animal)
            
            Text("@EnvironmentObject 修饰器是针对全局环境的。通过它，我们可以避免在初始 View 时创建 ObservableObject, 而是从环境中获取 ObservableObject")
                .foregroundStyle(.tint)
            Text("可以看出我们获取animal这个 ObservableObject 是通过 @EnvironmentObject 修饰器，但是在入口需要传入 .environmentObject(animal) 。@EnvironmentObject 的工作方式是在 Environment 查找 Animal 实例。")
        }
    }
}

struct EnvironmentObjectSonView: View {
    @EnvironmentObject var animal: Animal
    var body: some View {
        VStack {
            Text(animal.name)
            Button("点我") {
                animal.name = "Hello SwiftUI!"
            }
        }
    }
}

#Preview {
    EnvironmentObjectView()
}
