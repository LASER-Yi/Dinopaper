//
//  DroppableArea.swift
//  Dinopaper
//
//  Created by LiangYi on 2021/12/4.
//

import SwiftUI

struct DroppableImage: View {
    
    @State var isTargeting = false
    @Binding var image: NSImage?
    
    init(image: Binding<NSImage?> = .constant(nil)) {
        self._image = image
    }
    
    var delegate: DropDelegate {
        get {
            return ImageDropDelegate(self.$isTargeting) { images in
                self.image = images.first
            }
        }
    }
    
    var body: some View {
        VStack(alignment: .center) {
            if let img = image {
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
            .padding()
    }
}
