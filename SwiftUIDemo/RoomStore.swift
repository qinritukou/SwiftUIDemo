//
//  RoomStore.swift
//  SwiftUIDemo
//
//  Created by Lihong Chen on 2020/01/18.
//  Copyright © 2020 Lihong Chen. All rights reserved.
//

import SwiftUI
import Combine

class RoomStore : ObservableObject {
    @Published var rooms = [Room]()

    init() {
        fetchRooms()
    }
        
    private func fetchRooms() {
        self.rooms = testData
    }
    
    
}
