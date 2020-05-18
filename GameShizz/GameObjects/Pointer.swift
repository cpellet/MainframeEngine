//
//  Player.swift
//  MainframeEngine
//
//  Created by cyrus pellet on 27/4/19.
//  Copyright © 2019 cloud31. All rights reserved.
//

import MetalKit

class Pointer: GameObject {
    
    private var camera: Camera!
    init(camera: Camera) {
        super.init(name: "Pointer", meshType: .Triangle_Custom)
        self.camera = camera
        self.setName("Pointer")
    }
    
    override func doUpdate() {
        self.rotateZ(-atan2f(Mouse.GetMouseViewportPosition().x - getPositionX() + camera.getPositionX(),
                             Mouse.GetMouseViewportPosition().y - getPositionY() + camera.getPositionY()))
        
    }
}
