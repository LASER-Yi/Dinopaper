//
//  ImageDropDelegate.swift
//  Dinopaper
//
//  Created by LiangYi on 2021/12/4.
//

import Foundation
import SwiftUI
import UniformTypeIdentifiers

struct ImageDropDelegate : DropDelegate {
    
    // TODO: Allow .image type
    static let AllowItemTypes: [UTType] = [.fileURL]
    
    @Binding var isTargeting: Bool
    
    let onDrop: ([NSImage]) -> Void
    
    init(_ targetBinding: Binding<Bool>, onDrop: @escaping ([NSImage]) -> Void ) {
        self._isTargeting = targetBinding
        self.onDrop = onDrop
    }
    
    func validateDrop(info: DropInfo) -> Bool {
        return info.hasItemsConforming(to: ImageDropDelegate.AllowItemTypes)
    }
    
    func dropEntered(info: DropInfo) {
        self.isTargeting = true
    }
    
    func dropExited(info: DropInfo) {
        self.isTargeting = false
    }
    
    func performDrop(info: DropInfo) -> Bool {
        
        Task(priority: .background) {
            
            var images: [NSImage] = []
            
            for item in info.itemProviders(for: ImageDropDelegate.AllowItemTypes) {
                if let urlData = try? await item.loadItem(forTypeIdentifier: UTType.fileURL.identifier, options: nil),
                let data = urlData as? Data,
                let url = URL(dataRepresentation: data, relativeTo: nil) {
                    let image = NSImage(byReferencing: url)
                    images.append(image)
                }
            }
            
            if !images.isEmpty {
                self.onDrop(images)
            }
        }
        
        return true
    }
}
