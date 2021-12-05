//
//  Sidebar.swift
//  Dinopaper
//
//  Created by LiangYi on 2021/12/3.
//

import SwiftUI

struct Sidebar: View {
    
    @EnvironmentObject var instance: InstanceData
    
    var body: some View {
        List {
            switch instance.mode {
            case .Appearance:
                AppearanceSidebarItem()
            default:
                Text("[TODO] Support this mode")
            }
        }
        .toolbar {
            ToolbarItem {
                Menu {
                    Picker("Mode", selection: self.$instance.mode) {
                        ForEach(CreateMode.allCases) { mode in
                            Text(mode.rawValue)
                        }
                    }
                    .pickerStyle(.inline)
                } label: {
                    Label(instance.mode.rawValue, systemImage: instance.mode.imageName)
                }
            }
        }
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
            .previewed()
            .frame(width: 120, height: 240)
    }
}
