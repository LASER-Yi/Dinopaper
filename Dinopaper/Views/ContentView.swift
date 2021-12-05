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
            
            Text("Content View")

        }
        .navigationTitle("Dinopaper")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewed()
    }
}
