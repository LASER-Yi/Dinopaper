//
//  PictureCreateButton.swift
//  Dinopaper
//
//  Created by LiangYi on 2021/12/5.
//

import SwiftUI

struct CreateImageButton<T: PictureCreatable & ObservableObject>: View {
    
    @StateObject var creator: T
    
    var body: some View {
        Button {
            // Code here
            Task(priority: .high) {
                // TODO: Error handling
                try? await creator.createWallpaper()
            }
        } label: {
            Image(systemName: "play.fill")
        }
        .disabled(!creator.canCreate())
    }
}

struct PictureCreateButton_Previews: PreviewProvider {
    static var previews: some View {
        CreateImageButton(creator: AppearanceCreator())
    }
}
