//  /*
//
//  Project: Sidebar Menu
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 31.05.2023
//
//  */

import SwiftUI

struct ContentView: View {
    
    @State private var isOpen: Bool = false
    var body: some View {
        
        NavigationView {
            SideBar(isOpen: $isOpen, drawer: {
                Color(.gray)
                    .edgesIgnoringSafeArea(.all)
                SideBarList(isOpen: $isOpen)
            }) {
                BaseView(isOpen: self.$isOpen)
            }

             
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
