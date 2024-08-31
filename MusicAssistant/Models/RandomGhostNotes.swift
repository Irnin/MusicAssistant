//
//  random16thNotes.swift
//  MusicAssistant
//
//  Created by Łukasz Michalak on 31/08/2024.
//

import Foundation

struct RandomGhostNotes: Identifiable, Hashable {
    var id = UUID()
    var bar: [Note]
    
    init() {
        // TODO, tymczasowo na sztywno mam ustawione 16tki. Domyślnie będę chciał mieć możliwość modyfikowania ilości dzwięków w takcie
        bar = []
        
        for i in 1...16 {
            var note: Note
            
            switch i {
            case 1, 6, 8:
                note = Note(value: 0, ghostNote: true)
            default:
                note = Note(value: 0, ghostNote: false, hide: true)
            }
            
            bar.append(note)
        }
        
    }
    
    mutating func generateBar() {
        bar.removeAll()
        
        for i in 1...16 {
            let note = Note(value: 0, ghostNote: false, hide: Bool.random())
            
            bar.append(note)
        }
    }
    
//    static func == (lhs: RandomGhostNotes, rhs: RandomGhostNotes) -> Bool {
//        lhs.id == rhs.id
//    }
}
