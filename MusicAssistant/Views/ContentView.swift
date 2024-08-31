//
//  ContentView.swift
//  MusicAssistant
//
//  Created by Łukasz Michalak on 31/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: SideBarElement = SideBarElement.randomGhostNotes
    
    var body: some View {
        VStack {
            NavigationSplitView {
                SidebarView(selection: $selection)
            } detail: {
                switch selection {
                case .randomGhostNotes:
                    RandomGhostNotesView()
                case .metronome:
                    Text("Metronome will be here soon :>")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
