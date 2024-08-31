//
//  SideBarElements.swift
//  MusicAssistant
//
//  Created by Łukasz Michalak on 31/08/2024.
//

import Foundation

enum SideBarElement: Identifiable, CaseIterable, Hashable {
    case randomGhostNotes
    case metronome
    
    var id: String {
        switch self {
        case .randomGhostNotes:
            "randomGhostNotes"
        case .metronome:
            "metronome"
        }
    }
    
    var displayName: String {
        switch self {
        case .randomGhostNotes:
            "Random ghost notes"
        case .metronome:
            "Metronome"
        }
    }
    
    var iconName: String {
        switch self {
        case .randomGhostNotes:
            "music.note.list"
        case .metronome:
            "metronome"
        }
    }
    
    static var allCases: [SideBarElement] {
        [.randomGhostNotes, .metronome]
    }
    
    static func == (lhs: SideBarElement, rhs: SideBarElement) -> Bool {
        lhs.id == rhs.id
    }
}
