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
    
    init(isOpen: Binding<Bool>, @ViewBuilder drawer: @escaping () -> Drawer, @ViewBuilder content: @escaping () -> Content) {
        self._isOpen = isOpen
        self.drawer = drawer
        self.content = content
    }
    
    var body: some View {
        
        ZStack {
            Group {
                if isOpen {
                    drawer()
                }
            }
            content()
                .cornerRadius(isOpen ?  20.0 : 0.0)
                .onTapGesture {
                    self.isOpen = false
                }
            
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        SideBar()
//    }
//}
