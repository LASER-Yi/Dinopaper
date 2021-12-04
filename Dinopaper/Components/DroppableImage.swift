//
//  DroppableArea.swift
//  Dinopaper
//
//  Created by LiangYi on 2021/12/4.
//

import SwiftUI
import UniformTypeIdentifiers

struct DroppableImage: View {
    
    @State var isTargeting = false
    @State var images: [NSImage] = []
    
    var delegate: DropDelegate {
        get {
            return ImageDropDelegate(images: self.$images, isTargeting: self.$isTargeting)
        }
    }
    
    var body: some View {
        VStack(alignment: .center) {
            if let img = images.first {
                Image(nsImage: img)
                    .resizable()
                    .scaledToFit()
            } else {
                Rectangle()
                    .foregroundColor(.secondary)
            }
        }
        .cornerRadius(4.0)
        .aspectRatio(1.0, contentMode: .fit)
        .onDrop(of: ImageDropDelegate.AllowItemTypes, delegate: self.delegate)
        
    }
}

struct DroppableArea_Previews: PreviewProvider {
    static var previews: some View {
        DroppableImage()
    }
}
