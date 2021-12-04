//
//  ContentView.swift
//  Dinopaper
//
//  Created by LiangYi on 2021/12/3.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var instance: InstanceData
    
    var body: some View {
        
        NavigationView {
            Sidebar()
            
            // TODO: Change Mode
            CreateView()
        }
        .navigationTitle("Dinopaper")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button {
                    // Create images
                } label: {
                    Image(systemName: "play.fill")
                }
                .disabled(true)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewed()
    }
}
