//
//  ContentView.swift
//  MusicAssistant
//
//  Created by Łukasz Michalak on 31/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: SideBarElement = SideBarElement.metronome
    
    var body: some View {
        VStack {
            NavigationSplitView {
                SidebarView(selection: $selection)
            } detail: {
                Text(selection.displayName)
            }
        }
    }
}

#Preview {
    ContentView()
}
