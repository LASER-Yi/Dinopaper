//
//  AppearanceCreateView.swift
//  Dinopaper
//
//  Created by LiangYi on 2021/12/4.
//

import SwiftUI

struct AppearanceCreateView: View {
    var body: some View {
        VStack {
            HStack(spacing: 24.0) {
                VStack {
                    Text("Light")
                    DroppableImage()
                }
                VStack {
                    Text("Dark")
                    DroppableImage()
                }
            }
        }
        .padding()
    }
}

struct AppearanceCreateView_Previews: PreviewProvider {
    static var previews: some View {
        AppearanceCreateView()
    }
}
