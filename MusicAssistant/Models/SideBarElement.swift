//
//  SideBarElements.swift
//  MusicAssistant
//
//  Created by Łukasz Michalak on 31/08/2024.
//

import Foundation

enum SideBarElement: Identifiable, CaseIterable, Hashable {
    case random16thNotes
    case metronome
    
    var id: String {
        switch self {
        case .random16thNotes:
            "random16thNotes"
        case .metronome:
            "metronome"
        }
    }
    
    var displayName: String {
        switch self {
        case .random16thNotes:
            "Random 16th notes"
        case .metronome:
            "Metronome"
        }
    }
    
    var iconName: String {
        switch self {
        case .random16thNotes:
            "music.note.list"
        case .metronome:
            "metronome"
        }
    }
    
    static var allCases: [SideBarElement] {
        [.random16thNotes, .metronome]
    }
    
    static func == (lhs: SideBarElement, rhs: SideBarElement) -> Bool {
        lhs.id == rhs.id
    }
}
