//  /*
//
//  Project: Sidebar Menu
//  File: SideBar.swift
//  Created by: Elaidzha Shchukin
//  Date: 31.05.2023
//
//  */

import SwiftUI

struct SideBar<Drawer, Content>: View where Drawer: View, Content: View {
    
    @Binding var isOpen: Bool
    
    let drawer: () -> Drawer
    let content: () -> Content
    
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
                        .frame(minWidth: 0.0, maxWidth: .infinity, minHeight: 0.0, maxHeight: .infinity, alignment: .topLeading)
                }
            }
            content()
                .animation(.easeIn)
                .scaleEffect(isOpen ? 0.75 : 1.0, anchor: .trailing)
                .offset(x: isOpen ? UIScreen.main.bounds.width * 0.4 : 0.0, y: 0.0 )
                .cornerRadius(isOpen ?  20.0 : 0.0)
                .onTapGesture {
                    self.isOpen = false
                }
            
        }
    }
}
