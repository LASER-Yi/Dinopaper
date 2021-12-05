//
//  DinopaperApp.swift
//  Dinopaper
//
//  Created by LiangYi on 2021/12/3.
//

import SwiftUI

@main
struct DinopaperApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(InstanceData())
        }
    }
}
