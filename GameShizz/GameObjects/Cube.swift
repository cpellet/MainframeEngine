//
//  Cube.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 28/4/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import MetalKit

class Cube: GameObject {
    
    init(){
        super.init(meshType: .Cube_Custom)
        self.setName("Cube")
    }
    
    override func doUpdate() {
        self.rotateX(GameTime.DeltaTime)
        self.rotateY(GameTime.DeltaTime)
    }
}
