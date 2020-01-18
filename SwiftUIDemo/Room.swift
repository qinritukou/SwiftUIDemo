//
//  Room.swift
//  SwiftUIDemo
//
//  Created by Lihong Chen on 2020/01/18.
//  Copyright © 2020 Lihong Chen. All rights reserved.
//

import Foundation

struct Room: Identifiable {
    var id = UUID()
    var name: String
    var capacity: Int
    var hasVideo: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name }
}


#if DEBUG

let testData = [
    Room(name: "Observation Deck", capacity: 6, hasVideo: true),
    Room(name: "Executive Suite", capacity: 8, hasVideo: false),
    Room(name: "Charter Jet", capacity: 16, hasVideo: true),
    Room(name: "Dungeon", capacity: 8, hasVideo: true),
    Room(name: "Panorama", capacity: 8, hasVideo: false),
    Room(name: "Oceanfront", capacity: 8, hasVideo: false),
    Room(name: "Rainbow Room", capacity: 8, hasVideo: true),
    Room(name: "Pastoral", capacity: 8, hasVideo: false),
    Room(name: "Elephant Room", capacity: 8, hasVideo: false),
]

#endif
