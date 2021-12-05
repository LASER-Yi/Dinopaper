//
//  PreviewHelper.swift
//  Dinopaper
//
//  Created by LiangYi on 2021/12/3.
//

import Foundation
import SwiftUI

struct PreviewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .environmentObject(PreviewData)
    }
}

extension View {
    func previewed() -> some View {
        modifier(PreviewModifier())
    }
}

var PreviewImage: NSImage {
    get {
        return NSImage(named: "preview-wallpaper")!
    }
}

var PreviewData: InstanceData {
    get {
        let data = InstanceData()
        return data
    }
}
