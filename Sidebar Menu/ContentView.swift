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
            SideBar(isOpen: $isOpen) {
                //
            } content: {
                Base
            }

             
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
