//
//  WallpaperCreatable.swift
//  Dinopaper
//
//  Created by LiangYi on 2021/12/5.
//

import Foundation

protocol PictureCreatable {
    func canCreate() -> Bool
    
    func createWallpaper() async throws -> URL
}
