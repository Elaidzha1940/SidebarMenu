//  /*
//
//  Project: Sidebar Menu
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 31.05.2023
//
//  */

import SwiftUI

struct SideBar<Drawer, Content>: View where Drawer: View, Content: View {
    
    @Binding var isOpen: Bool
    
    let drawer: () -> Drawer
    let drawer: () -> Content
    
    init(isOpen: Binding<Bool>, @ViewBuilder drawer: @escaping () -> View) {
        self.isOpen = isOpen
        self.drawer = drawer
    }
    
    var body: some View {
        
        VStack {
            Image(systemName: "globe")
             
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}
