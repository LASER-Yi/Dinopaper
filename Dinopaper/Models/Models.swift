//
//  InstanceData.swift
//  Dinopaper
//
//  Created by LiangYi on 2021/12/3.
//

import Foundation
import SwiftUI

final class InstanceData: ObservableObject {
    
    @Published var mode: CreateMode = .Appearance
    @Published var creator: PictureCreatable = AppearanceCreator()
}
