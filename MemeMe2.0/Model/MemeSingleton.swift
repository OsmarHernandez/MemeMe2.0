//
//  MemeSingleton.swift
//  MemeMe2.0
//
//  Created by Osmar Hernández on 20/01/20.
//  Copyright © 2020 personal. All rights reserved.
//

import Foundation

class MemeSingleton {
    public static let shared = MemeSingleton()
    
    var memes: [Meme] = []
}
