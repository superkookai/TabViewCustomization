//
//  TabViewCust01.swift
//  TabViewCustomization
//
//  Created by Weerawut Chaiyasomboon on 10/12/2567 BE.
//

import SwiftUI

struct TabViewCust01: View {
    init(){
        UITabBar.appearance().backgroundColor = UIColor(named: "red23") // Set background color
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray // Set unselected item color
//        UITabBar.appearance().barTintColor = UIColor(named: "red23")
//        UITabBar.appearance().backgroundImage = UIImage(named: "background")
    }
    
    var body: some View {
        TabView {
            Text("Home View")
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            Text("Settings View")
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
        .accentColor(.black) // Set selected tab color
    }
}


#Preview {
    TabViewCust01()
}
