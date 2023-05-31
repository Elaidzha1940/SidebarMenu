//  /*
//
//  Project: Sidebar Menu
//  File: BaseView.swift
//  Created by: Elaidzha Shchukin
//  Date: 31.05.2023
//
//  */

import SwiftUI

struct BaseView: View {
    
    @Binding var isOpen: Bool
     
    var body: some View {
        
        NavigationView {
            Text("World!")
                .font(.system(.largeTitle))
                .bold()
                .navigationBarItems(leading: Button(action: {
                    self.isOpen = true 
                }, label: {
                    Image(systemName: "text.justify ")
                }))
        }
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView(isOpen: .constant(true))
    }
}
