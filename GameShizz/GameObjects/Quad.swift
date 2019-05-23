//
//  Quad.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 10/5/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import simd

class Quad: GameObject {
    
    init() {
        super.init(meshType: .Quad_Custom)
        self.setName("Quad")
    }
    
}
