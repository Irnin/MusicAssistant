//
//  Note.swift
//  MusicAssistant
//
//  Created by Łukasz Michalak on 31/08/2024.
//

import Foundation

struct Note: Identifiable, Hashable {
    var id = UUID()
    var value: Int
    var ghostNote: Bool
    var hide: Bool = false
    
    static func == (lhs: Note, rhs: Note) -> Bool {
        lhs.id == rhs.id
    }
}
