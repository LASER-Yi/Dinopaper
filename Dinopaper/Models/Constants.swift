//
//  Constants.swift
//  Dinopaper
//
//  Created by LiangYi on 2021/12/3.
//

import Foundation
import AppKit

// Mode to create dynamic wallpaper
enum CreateMode: String, CaseIterable, Identifiable {
    case Appearance
    case Solar
    case Time
    
    var id: CreateMode { self }
    
    var imageName: String {
        switch self {
        case .Appearance:
            return "lightbulb.fill"
        case .Time:
            return "timelapse"
        case .Solar:
            return "sun.min"
        }
    }
}
