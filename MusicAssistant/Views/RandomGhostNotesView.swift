//
//  random16thNotes.swift
//  MusicAssistant
//
//  Created by Łukasz Michalak on 31/08/2024.
//

import SwiftUI

struct RandomGhostNotesView: View {
    @State var randomGhostNotes = RandomGhostNotes()
    
    var body: some View {
        VStack{
            ZStack {
                HStack {
                    ForEach(1...5, id: \.self) { i in
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .frame(width: 5, height: 50)
                            .cornerRadius(5)
                        
                        if i != 5 {
                            Spacer()
                        }
                    }
                }
                .frame(width: 890)
                
                HStack {
                    ForEach(randomGhostNotes.bar) { note in
                        Image(systemName: note.hide ? "circle" : "circle.fill")
                            .padding()
                    }
                }
            }
            
            Button(action: {
                randomGhostNotes.generateBar()
            }, label: {
                Label("Generate new", systemImage: "repeat")
            })
        }
        .navigationTitle("Random notes generator")
    }
}

#Preview {
    RandomGhostNotesView()
}
