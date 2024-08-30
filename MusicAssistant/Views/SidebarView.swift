//
//  SidebarView.swift
//  MusicAssistant
//
//  Created by Łukasz Michalak on 31/08/2024.
//

import SwiftUI

struct SidebarView: View {
    @Binding var selection: SideBarElement
    
    var body: some View {
        List(selection: $selection) {
            ForEach(SideBarElement.allCases) { sideBarElement in
                Label(sideBarElement.displayName, systemImage: sideBarElement.iconName)
                    .tag(sideBarElement)
            }
        }
    }
}

#Preview {
    SidebarView(selection: .constant(.metronome))
}
