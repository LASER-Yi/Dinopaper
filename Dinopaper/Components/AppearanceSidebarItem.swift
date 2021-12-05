//
//  AppearanceSidebarItem.swift
//  Dinopaper
//
//  Created by LiangYi on 2021/12/5.
//

import SwiftUI


struct AppearanceSidebarItem: View {
    
    @EnvironmentObject var instance: InstanceData
    
    @StateObject var creator: AppearanceCreator = .init()
    
    @State var image: NSImage? = nil
    
    var body: some View {
        VStack(alignment: .center) {
            Section("Light") {
                DroppableImage(image: $creator.lightPicture)
            }
            Section("Dark") {
                DroppableImage(image: $creator.darkPicture)
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigation) {
                CreateImageButton(creator: creator)
            }
        }
    }
}

struct AppearanceSidebarItem_Previews: PreviewProvider {
    static var previews: some View {
        AppearanceSidebarItem()
            .previewed()
    }
}
