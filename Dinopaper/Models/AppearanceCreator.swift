//
//  AppearanceCreator.swift
//  Dinopaper
//
//  Created by LiangYi on 2021/12/5.
//

import Foundation
import AppKit

class AppearanceCreator: ObservableObject, PictureCreatable {
    
    func canCreate() -> Bool {
        return lightPicture != nil && darkPicture != nil
    }
    
    func createWallpaper() async throws -> URL {
        throw URLError(.badURL)
    }
    
    @Published var lightPicture: NSImage? = nil
    @Published var darkPicture: NSImage? = nil
}
