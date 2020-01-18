//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Lihong Chen on 2020/01/18.
//  Copyright © 2020 Lihong Chen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store = RoomStore()
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    Button(action: addRoom) {
                        Text("Add Room")
                    }
                }
                
                Section {
                    ForEach(store.rooms) { room in
                        RoomCell(room: room)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
            }
            .navigationBarTitle(Text("Rooms"))
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    func addRoom() {
        store.rooms.append(Room(name: "Hall 2", capacity: 2000))
    }
    
    func delete(at offsets: IndexSet) {
        store.rooms.remove(atOffsets: offsets)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        store.rooms.move(fromOffsets: source, toOffset: destination)
    }
}

struct RoomCell: View {
    let room: Room
    
    var body: some View {
        return NavigationLink(destination: RoomDetail(room: room)) {
            Image(room.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(16)
                    
                
            VStack(alignment: .leading) {
                Text(room.name)
                Text("\(room.capacity) people")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(store: RoomStore())
            
            ContentView(store: RoomStore())
                .environment(\.sizeCategory, .extraExtraLarge)
            
            ContentView(store: RoomStore())
                .environment(\.colorScheme, .dark)

            ContentView(store: RoomStore())
                .environment(\.layoutDirection, .rightToLeft)
                .environment(\.locale, Locale(identifier: "ar"))
        }
    }
}
