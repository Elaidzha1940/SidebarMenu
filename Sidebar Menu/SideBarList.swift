//  /*
//
//  Project: Sidebar Menu
//  File: SideBarList.swift
//  Created by: Elaidzha Shchukin
//  Date: 31.05.2023
//
//  */

import SwiftUI

struct SideBarList: View {
    
    @Binding var isOpen: Bool
    
    var body: some View {
        
        VStack {
            ForEach(EnumerationItem.allCases, content: <#T##(Binding<Identifiable>) -> _#>) {
                
            }
        }
        
    }
}

struct SideBarList_Previews: PreviewProvider {
    static var previews: some View {
        SideBarList(isOpen: .constant(true))
    }
}
