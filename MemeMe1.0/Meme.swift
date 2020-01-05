//
//  Meme.swift
//  MemeMe1.0
//
//  Created by Osmar Hernández on 04/01/20.
//  Copyright © 2020 personal. All rights reserved.
//

import Foundation
import UIKit

struct Meme {
    let topText: String
    let bottomText: String
    let originalImage: UIImage
    let memedImage: UIImage
    
    init(topText: String, bottomText: String, originalImage: UIImage, memedImage: UIImage) {
        self.topText = topText
        self.bottomText = topText
        self.originalImage = originalImage
        self.memedImage = memedImage
    }
}
