//
//  Sidebar.swift
//  Dinopaper
//
//  Created by LiangYi on 2021/12/3.
//

import SwiftUI

struct Sidebar: View {
    
    @State var images: [ImageInfo] = []
    
    var body: some View {
        LazyVStack {
            if (images.count == 0) {
                Text("Drop Images to Start")
                    .padding()
                    .lineLimit(1)
            } else {
                List(images) { img in
                    
                }
            }
        }
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
